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

ActiveRecord::Schema.define(version: 2018_12_26_211229) do

  create_table "appointments", force: :cascade do |t|
    t.integer "customer_id"
    t.integer "hair_stylist_id"
    t.text "date"
    t.text "service"
    t.decimal "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_appointments_on_customer_id"
    t.index ["hair_stylist_id"], name: "index_appointments_on_hair_stylist_id"
  end

  create_table "customers", force: :cascade do |t|
    t.text "name"
    t.text "hairtype"
    t.text "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hair_stylists", force: :cascade do |t|
    t.text "name"
    t.text "specialty"
    t.integer "years_of_experience"
    t.integer "salon_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["salon_id"], name: "index_hair_stylists_on_salon_id"
  end

  create_table "salons", force: :cascade do |t|
    t.text "name"
    t.text "price"
    t.text "location"
    t.text "phone_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
