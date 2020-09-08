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

ActiveRecord::Schema.define(version: 2020_09_07_134828) do

  create_table "sets_trainings", force: :cascade do |t|
    t.integer "training_id"
    t.integer "weight_set_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["training_id"], name: "index_sets_trainings_on_training_id"
    t.index ["weight_set_id"], name: "index_sets_trainings_on_weight_set_id"
  end

  create_table "trainings", force: :cascade do |t|
    t.string "name", null: false
    t.integer "body_part", null: false
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_trainings_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "nickname", null: false
    t.string "email", null: false
    t.string "password_digest", null: false
    t.string "remember_token"
    t.float "height"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "weight_sets", force: :cascade do |t|
    t.integer "set_number", null: false
    t.float "weight", null: false
    t.float "reps", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
