class CreateManufacturers < ActiveRecord::Migration[5.2]
  def change
    create_table :manufacturers do |t|
      t.string :manufacturerName
      t.string :headOffice
      t.date :dateFounded

      t.timestamps
    end
  end
end
