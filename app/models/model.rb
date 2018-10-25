class Model < ApplicationRecord
  belongs_to :vehicle_type
  belongs_to :manufacturer

  

  validates :modelName, :vehicleType, :manufacturer, presence: true
  validates :modelName, uniqueness: true
  validates :engineSize, :numberOfDoors, numericality: {only_integer: true}
end
