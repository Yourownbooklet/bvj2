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

ActiveRecord::Schema.define(version: 20181001152614) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answers", force: :cascade do |t|
    t.string "answer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "question_id"
    t.index ["question_id"], name: "index_answers_on_question_id"
  end

  create_table "bookanswers", force: :cascade do |t|
    t.string "answer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "question_id"
    t.bigint "book_id"
    t.index ["book_id"], name: "index_bookanswers_on_book_id"
    t.index ["question_id"], name: "index_bookanswers_on_question_id"
  end

  create_table "bookimages", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "book_id"
    t.bigint "image_id"
    t.index ["book_id"], name: "index_bookimages_on_book_id"
    t.index ["image_id"], name: "index_bookimages_on_image_id"
  end

  create_table "books", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "buyer_id"
    t.bigint "booktemplate_id"
    t.boolean "edited", default: false
    t.index ["booktemplate_id"], name: "index_books_on_booktemplate_id"
    t.index ["buyer_id"], name: "index_books_on_buyer_id"
  end

  create_table "booktemplateimages", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "booktemplate_id"
    t.bigint "image_id"
    t.index ["booktemplate_id"], name: "index_booktemplateimages_on_booktemplate_id"
    t.index ["image_id"], name: "index_booktemplateimages_on_image_id"
  end

  create_table "booktemplates", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "publisher_id"
    t.bigint "productsubtype_id"
    t.bigint "subcategory_id"
    t.index ["productsubtype_id"], name: "index_booktemplates_on_productsubtype_id"
    t.index ["publisher_id"], name: "index_booktemplates_on_publisher_id"
    t.index ["subcategory_id"], name: "index_booktemplates_on_subcategory_id"
  end

  create_table "booktemplatetexts", force: :cascade do |t|
    t.string "text1"
    t.string "text2"
    t.string "text3"
    t.string "text4"
    t.string "text5"
    t.string "text6"
    t.string "text7"
    t.string "text8"
    t.string "text9"
    t.string "text10"
    t.string "text11"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "booktemplate_id"
    t.index ["booktemplate_id"], name: "index_booktemplatetexts_on_booktemplate_id"
  end

  create_table "booktexts", force: :cascade do |t|
    t.string "text1"
    t.string "text2"
    t.string "text3"
    t.string "text4"
    t.string "text5"
    t.string "text6"
    t.string "text7"
    t.string "text8"
    t.string "text9"
    t.string "text10"
    t.string "text11"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "book_id"
    t.index ["book_id"], name: "index_booktexts_on_book_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "image_id"
    t.index ["image_id"], name: "index_categories_on_image_id"
  end

  create_table "imagegalleries", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "publisher_id"
    t.index ["publisher_id"], name: "index_imagegalleries_on_publisher_id"
  end

  create_table "images", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "imagegallery_id"
    t.string "type"
    t.string "filename"
    t.index ["imagegallery_id"], name: "index_images_on_imagegallery_id"
  end

  create_table "orders", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "book_id"
    t.bigint "buyer_id"
    t.index ["book_id"], name: "index_orders_on_book_id"
    t.index ["buyer_id"], name: "index_orders_on_buyer_id"
  end

  create_table "pagetemplates", force: :cascade do |t|
    t.string "name"
    t.text "html"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "booktemplate_id"
    t.index ["booktemplate_id"], name: "index_pagetemplates_on_booktemplate_id"
  end

  create_table "productsubtypes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "producttype_id"
    t.index ["producttype_id"], name: "index_productsubtypes_on_producttype_id"
  end

  create_table "producttypes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "questions", force: :cascade do |t|
    t.string "question"
    t.boolean "open"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "subcategory_id"
    t.index ["subcategory_id"], name: "index_questions_on_subcategory_id"
  end

  create_table "subcategories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "category_id"
    t.bigint "image_id"
    t.index ["category_id"], name: "index_subcategories_on_category_id"
    t.index ["image_id"], name: "index_subcategories_on_image_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "streetname"
    t.integer "streetnumber"
    t.string "number_extension"
    t.string "postalcode"
    t.string "city"
    t.string "country"
    t.string "phonenumber"
    t.string "geaddresseerde"
    t.string "string"
    t.string "streetname2"
    t.integer "streetnumber2"
    t.string "number2_extension"
    t.string "postalcode2"
    t.string "city2"
    t.string "country2"
    t.boolean "afleveradreshetzelfde", default: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "answers", "questions"
  add_foreign_key "bookanswers", "books"
  add_foreign_key "bookanswers", "questions"
  add_foreign_key "bookimages", "books"
  add_foreign_key "bookimages", "images"
  add_foreign_key "books", "booktemplates"
  add_foreign_key "books", "users", column: "buyer_id"
  add_foreign_key "booktemplateimages", "booktemplates"
  add_foreign_key "booktemplateimages", "images"
  add_foreign_key "booktemplates", "productsubtypes"
  add_foreign_key "booktemplates", "subcategories"
  add_foreign_key "booktemplates", "users", column: "publisher_id"
  add_foreign_key "booktemplatetexts", "booktemplates"
  add_foreign_key "booktexts", "books"
  add_foreign_key "categories", "images"
  add_foreign_key "imagegalleries", "users", column: "publisher_id"
  add_foreign_key "images", "imagegalleries"
  add_foreign_key "orders", "books"
  add_foreign_key "orders", "users", column: "buyer_id"
  add_foreign_key "pagetemplates", "booktemplates"
  add_foreign_key "productsubtypes", "producttypes"
  add_foreign_key "questions", "subcategories"
  add_foreign_key "subcategories", "categories"
  add_foreign_key "subcategories", "images"
end
