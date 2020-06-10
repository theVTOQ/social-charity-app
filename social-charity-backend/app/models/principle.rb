class Principle < ApplicationRecord
    has_many :demographic_qualifiers
    has_many :action_qualifiers
    has_many :quality_of_life_qualifiers
    has_many :pledges
end
