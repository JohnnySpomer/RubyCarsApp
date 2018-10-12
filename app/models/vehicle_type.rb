class VehicleType < ApplicationRecord
    has_many :model

    validates :vehicleType, presence: true
    validates :vehicleType, uniqueness: true
end
