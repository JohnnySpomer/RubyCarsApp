class Model < ApplicationRecord
  belongs_to :vehicleType
  belongs_to :manufacturer

  has_one :manufacturer
  has_many :vehicleType

  validates :modelName, vehicleType, manufacturer, presence: true
  validates :modelName, uniqueness => true
  validates :engineSize, :numberOfDoors :numericality => {:only_integer => true}
end
