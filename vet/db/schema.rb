# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20140210042828) do

  create_table "appointments", force: true do |t|
    t.date     "date_of_visit", null: false
    t.integer  "customer_id",   null: false
    t.boolean  "reminder"
    t.text     "reason",        null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "pet_id"
    t.integer  "doctor_id"
  end

  add_index "appointments", ["customer_id"], name: "index_appointments_on_customer_id"
  add_index "appointments", ["doctor_id"], name: "index_appointments_on_doctor_id"
  add_index "appointments", ["pet_id"], name: "index_appointments_on_pet_id"

  create_table "customers", force: true do |t|
    t.string   "name"
    t.string   "email",      null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "doctors", force: true do |t|
    t.string   "name"
    t.text     "address"
    t.string   "city"
    t.string   "state"
    t.integer  "zip"
    t.string   "school"
    t.integer  "experience"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pets", force: true do |t|
    t.string   "name",       null: false
    t.string   "pet_type",   null: false
    t.string   "breed",      null: false
    t.integer  "age",        null: false
    t.integer  "weight",     null: false
    t.date     "last_visit", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
