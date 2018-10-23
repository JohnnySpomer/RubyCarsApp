class CreateManufacturers < ActiveRecord::Migration[5.2]
  def change
    create_table :manufacturers do |t|
      t.string :manufacturerName
      t.string :headOffice
      t.date :dateFounded
      t.references :location, foreign_key: true

      t.timestamps
    end
  end
end
