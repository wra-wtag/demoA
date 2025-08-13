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

ActiveRecord::Schema[8.0].define(version: 2025_08_13_104025) do
  create_table "articles", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "book_orders", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "quantity"
    t.integer "book_id"
    t.index ["book_id"], name: "index_book_orders_on_book_id"
  end

  create_table "book_reviews", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.integer "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "book_id"
    t.index ["book_id"], name: "index_book_reviews_on_book_id"
  end

  create_table "books", force: :cascade do |t|
    t.string "title"
    t.string "author"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.string "title"
    t.integer "Article_id", null: false
    t.integer "News_id", null: false
    t.integer "Event_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Article_id"], name: "index_comments_on_Article_id"
    t.index ["Event_id"], name: "index_comments_on_Event_id"
    t.index ["News_id"], name: "index_comments_on_News_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "title"
    t.string "venue"
    t.string "address"
    t.date "scheduled_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "news", force: :cascade do |t|
    t.string "title"
    t.boolean "is_live"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "stock_quantity"
    t.decimal "price"
    t.integer "user_id", null: false
    t.index ["price"], name: "index_products_on_price"
    t.index ["user_id"], name: "index_products_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "book_orders", "books"
  add_foreign_key "book_reviews", "books"
  add_foreign_key "comments", "Articles"
  add_foreign_key "comments", "Events"
  add_foreign_key "comments", "News"
  add_foreign_key "products", "users"
end
