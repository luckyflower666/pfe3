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

ActiveRecord::Schema.define(version: 20131119132849) do

  create_table "clients", force: true do |t|
    t.integer  "User_id"
    t.string   "sizeup"
    t.integer  "sizedown"
    t.integer  "sizehoes"
    t.string   "IMEI"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "clients", ["User_id"], name: "index_clients_on_User_id"

  create_table "installation_data", force: true do |t|
    t.integer  "Client_id"
    t.string   "objectId"
    t.string   "appName"
    t.string   "appVersion"
    t.integer  "badge"
    t.string   "deviceToken"
    t.string   "deviceType"
    t.string   "installationId"
    t.string   "parseVersion"
    t.string   "timeZone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "installation_data", ["Client_id"], name: "index_installation_data_on_Client_id"

  create_table "owners", force: true do |t|
    t.integer  "User_id"
    t.string   "facebookappid"
    t.string   "description"
    t.string   "facebookappkey"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "owners", ["User_id"], name: "index_owners_on_User_id"

  create_table "parse_data", force: true do |t|
    t.integer  "User_id"
    t.string   "username"
    t.string   "password"
    t.string   "authdata"
    t.string   "email"
    t.boolean  "emailverified"
    t.string   "ACL"
    t.string   "objectId"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "parse_data", ["User_id"], name: "index_parse_data_on_User_id"

  create_table "payment_data", force: true do |t|
    t.integer  "Client_id"
    t.string   "cardnumber"
    t.string   "cardId"
    t.date     "expirationdata"
    t.string   "securitycode"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "payment_data", ["Client_id"], name: "index_payment_data_on_Client_id"

  create_table "preferences", force: true do |t|
    t.integer  "Client_id"
    t.string   "color"
    t.string   "brand"
    t.string   "theme"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "preferences", ["Client_id"], name: "index_preferences_on_Client_id"

  create_table "social_data", force: true do |t|
    t.integer  "Client_id"
    t.string   "facebookToken"
    t.string   "facebookSecret"
    t.string   "facebook"
    t.string   "twitter"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "social_data", ["Client_id"], name: "index_social_data_on_Client_id"

  create_table "stores", force: true do |t|
    t.integer  "Owner_id"
    t.string   "name"
    t.string   "address"
    t.string   "city"
    t.string   "country"
    t.integer  "numberfittingroom"
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "stores", ["Owner_id"], name: "index_stores_on_Owner_id"

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "firstname"
    t.string   "gender"
    t.integer  "age"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
