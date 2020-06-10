class User < ApplicationRecord
    has_many :pledges
    has_many :principles, through: :pledges
end
