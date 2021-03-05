class Driver < ApplicationRecord
  belongs_to :truck
  has_many :plantations, through: :dispatches
end
