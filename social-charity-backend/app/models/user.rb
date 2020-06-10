class User < ApplicationRecord
    has_secure_password

    has_many :identities #for omniauth
    has_many :pledges
    has_many :principles, through: :pledges

    #validations:
    validates :name, length: {minimum: 2}, unless: ->(x) { x.name.blank? }
    validates :email, presence: true, uniqueness: true, unless: ->(x) { !x.name.nil? }
    validates_presence_of :password, on: :create, if: :password_required

    before_validation :no_password_omniauth

    @called_omniauth = false

    def apply_omniauth(omniauth)
        self.identities.build(provider: omniauth['provider'], uid: omniauth['uid'])
        self.name = omniauth['info']['name'] if self.name.blank?
        self.email = omniauth['info']['email'] if omniauth['info']['email'] && self.email.blank?
        @called_omniauth = true
    end

    def password_required
        !@called_omniauth
    end

    def presentation
        self.email.nil? ? self.name : self.email
    end

    private

    def no_password_omniauth
        self.password_digest = 0 unless password_required
    end
end
