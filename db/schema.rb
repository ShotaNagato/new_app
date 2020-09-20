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

ActiveRecord::Schema.define(version: 2020_09_20_014909) do

  create_table "introduces", force: :cascade do |t|
    t.text "about"
    t.text "skill"
    t.text "career"
    t.text "plan"
    t.integer "t_user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["t_user_id"], name: "index_introduces_on_t_user_id"
  end

  create_table "posts", force: :cascade do |t|
    t.text "recruit"
    t.integer "t_user_id", null: false
    t.integer "s_user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["s_user_id"], name: "index_posts_on_s_user_id"
    t.index ["t_user_id"], name: "index_posts_on_t_user_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.text "introduce"
    t.text "skill"
    t.text "carrer"
    t.text "plan"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "s_users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "password_digest"
    t.text "profile"
    t.index ["email"], name: "index_s_users_on_email", unique: true
  end

  create_table "t_posts", force: :cascade do |t|
    t.text "recruit"
    t.integer "t_user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["t_user_id"], name: "index_t_posts_on_t_user_id"
  end

  create_table "t_users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "password_digest"
    t.text "profile"
    t.index ["email"], name: "index_t_users_on_email", unique: true
    t.index ["profile"], name: "index_t_users_on_profile"
  end

  add_foreign_key "introduces", "t_users"
  add_foreign_key "posts", "s_users"
  add_foreign_key "posts", "t_users"
  add_foreign_key "t_posts", "t_users"
end
