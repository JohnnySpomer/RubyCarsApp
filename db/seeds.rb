# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
# destroy all data and then recreate it.

Manufacturer.destroy_all
Model.destroy_all

20.times do 
    manufacturer = Manufacturer.create(
        manufacturerName: Faker::Vehicle.manufacture,
        headOffice: Faker::Address.full_address,
        dateFounded: Faker::Time.backward(14600)
    )
end

5.times do
    model = Model.create(
        modelName: Faker::Vehicle.model
    )
end