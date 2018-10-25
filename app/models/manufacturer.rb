class Manufacturer < ApplicationRecord
    has_many :models
    has_many :vehicleTypes, through: :models
    has_many :locations
    belongs_to :location
    validates :manufacturerName, presence: true
    validates :manufacturerName, uniqueness: true
end
