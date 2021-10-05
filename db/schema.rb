# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_10_05_133339) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "artsessions", force: :cascade do |t|
    t.string "artstyle"
    t.string "price"
    t.string "sessiontype"
    t.integer "piecespergroup"
    t.bigint "customergroup_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["customergroup_id"], name: "index_artsessions_on_customergroup_id"
  end

  create_table "brandofwines", force: :cascade do |t|
    t.string "brand"
    t.integer "age"
    t.string "winetype"
    t.string "price"
    t.string "drysweet"
    t.string "alcoholcontent"
    t.string "img_src"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "customergroups", force: :cascade do |t|
    t.string "party"
    t.integer "partyquantity"
    t.string "customerstatus"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "artsessions", "customergroups"
end
