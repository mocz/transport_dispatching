class Area < ApplicationRecord
    has_many :plantations
    has_many :planters, through: :plantations
end
