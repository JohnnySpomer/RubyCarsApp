class CreateModels < ActiveRecord::Migration[5.2]
  def change
    create_table :models do |t|
      t.string :modelName
      t.references :vehicleType, foreign_key: true
      t.references :manufacturer, foreign_key: true
      t.string :carOptions
      t.integer :numberOfDoors
      t.integer :engineSize

      t.timestamps
    end
  end
end
