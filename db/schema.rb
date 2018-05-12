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

ActiveRecord::Schema.define(version: 2018_05_06_190019) do

  create_table "champions", force: :cascade do |t|
    t.string "name"
    t.boolean "owned"
    t.decimal "rp_cost"
    t.decimal "be_cost"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "skins", force: :cascade do |t|
    t.string "name"
    t.string "by"
    t.decimal "rp_cost"
    t.string "method_of_purchase"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "champions_id"
    t.integer "champion_id"
    t.index ["champion_id"], name: "index_skins_on_champion_id"
    t.index ["champions_id"], name: "index_skins_on_champions_id"
  end

end
