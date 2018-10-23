class CreateVehicleTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicle_types do |t|
      t.string :vehicleType
      t.string :driveType
      t.string :transmissionType
      t.string :fuelType

      t.timestamps
    end
  end
end
