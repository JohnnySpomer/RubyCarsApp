# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_10_25_174928) do

  create_table "locations", force: :cascade do |t|
    t.string "city"
    t.string "street"
    t.string "postalCode"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "manufacturers", force: :cascade do |t|
    t.string "manufacturerName"
    t.string "headOffice"
    t.date "dateFounded"
    t.integer "location_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["location_id"], name: "index_manufacturers_on_location_id"
  end

  create_table "models", force: :cascade do |t|
    t.string "modelName"
    t.integer "vehicle_type_id"
    t.integer "manufacturer_id"
    t.string "carOptions"
    t.integer "numberOfDoors"
    t.integer "engineSize"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["manufacturer_id"], name: "index_models_on_manufacturer_id"
    t.index ["vehicle_type_id"], name: "index_models_on_vehicle_type_id"
  end

  create_table "vehicle_types", force: :cascade do |t|
    t.string "vehicleType"
    t.string "driveType"
    t.string "transmissionType"
    t.string "fuelType"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
