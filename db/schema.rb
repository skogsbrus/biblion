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

ActiveRecord::Schema.define(version: 20170831200550) do

  create_table "books", force: :cascade do |t|
    t.string   "title"
    t.string   "author"
    t.datetime "year"
    t.text     "description"
    t.integer  "swaps"
    t.boolean  "available"
    t.integer  "user_id"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.string   "cover"
    t.string   "language"
    t.string   "quality"
    t.string   "googlebooks", default: "f"
    t.integer  "pages"
    t.string   "genre"
    t.index ["user_id", "created_at"], name: "index_books_on_user_id_and_created_at"
    t.index ["user_id"], name: "index_books_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "telephone"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "password_digest"
    t.string   "remember_digest"
    t.boolean  "admin"
    t.string   "activation_digest"
    t.boolean  "activated"
    t.datetime "activated_at"
    t.string   "location"
    t.string   "landscape"
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end
