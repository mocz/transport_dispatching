class Truck < ApplicationRecord
    has_many :drivers
    has_many :dispatches, through: :drivers
end
