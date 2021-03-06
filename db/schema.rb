# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_04_03_130716) do

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.string "lastName"
    t.string "adress"
    t.string "e_mail"
    t.integer "phone"
    t.string "password"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.string "desciption"
    t.datetime "date"
    t.integer "venue_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["venue_id"], name: "index_events_on_venue_id"
  end

  create_table "ticket_orders", force: :cascade do |t|
    t.integer "customer_id"
    t.integer "quantity"
    t.integer "ticket_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["customer_id"], name: "index_ticket_orders_on_customer_id"
    t.index ["ticket_id"], name: "index_ticket_orders_on_ticket_id"
  end

  create_table "tickets", force: :cascade do |t|
    t.integer "price"
    t.integer "event_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["event_id"], name: "index_tickets_on_event_id"
  end

  create_table "venues", force: :cascade do |t|
    t.string "name"
    t.string "adress"
    t.integer "capacity"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
