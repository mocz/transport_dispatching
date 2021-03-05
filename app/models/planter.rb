class Planter < ApplicationRecord
    has_many :plantations
    has_many :areas, through: :plantations
end
