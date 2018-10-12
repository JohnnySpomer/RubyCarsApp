class Manufacturer < ApplicationRecord
    has_many :model
    validates :manufacturerName, presence: true
    validates :manufacturerName, uniqueness: true
end
