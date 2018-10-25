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

# create the model
20.times do 
    manufacturerName = Faker::Vehicle.manufacture.to_s
    engineSizeInt = Faker::Vehicle.engine_size.to_i
    modelName = Faker::Vehicle.model.to_s
    city = Faker::Address.city.to_s

    location = Location.create(
        city: city,
        street: Faker::Address.street_address,
        postalCode: Faker::Address.postcode
    )

    manufacturer = Manufacturer.create(
        manufacturerName: manufacturerName,
        headOffice: Faker::Address.full_address,
        dateFounded: Faker::Time.backward(14600),
        location: location
    )

    vehicleType1 = VehicleType.create(
        vehicleType: Faker::Vehicle.car_type,
        driveType: Faker::Vehicle.drive_type,
        transmissionType: Faker::Vehicle.transmission,
        fuelType: Faker::Vehicle.fuel_type
    )

    model = Model.create(
        modelName: modelName,
        carOptions: Faker::Vehicle.car_options,
        numberOfDoors: Faker::Vehicle.doors,
        engineSize: engineSizeInt,
        manufacturer: manufacturer,
        vehicle_type: vehicleType1
    )
end
