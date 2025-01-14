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

ActiveRecord::Schema.define(version: 2022_01_24_230332) do

  create_table "books", force: :cascade do |t|
    t.string "title"
    t.string "author"
    t.string "genre"
    t.string "category"
    t.string "description"
    t.float "price"
    t.float "rating"
    t.string "image"
    t.integer "total_quantity"
    t.integer "quantity_in_stock"
    t.datetime "date_added"
    t.integer "discount"
  end

  create_table "rented_books", force: :cascade do |t|
    t.datetime "checkout_date"
    t.datetime "return_date"
    t.boolean "past_due"
    t.integer "book_id"
    t.integer "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password"
    t.string "email"
    t.string "address"
    t.string "name"
    t.string "phone"
  end

end
