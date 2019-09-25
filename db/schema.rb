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

ActiveRecord::Schema.define(version: 2019_08_11_123710) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

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
    t.string "email"
    t.string "company"
    t.string "sender"
    t.string "streetname_and_number"
    t.string "postalcode"
    t.string "city"
    t.string "country"
    t.string "phonenumber"
    t.string "addressee"
    t.string "company2"
    t.string "streetname_and_number2"
    t.string "postalcode_city2"
    t.string "country2"
    t.boolean "afleveradreshetzelfde", default: true
    t.text "booktexts", default: [], array: true
    t.index ["booktemplate_id"], name: "index_books_on_booktemplate_id"
    t.index ["buyer_id"], name: "index_books_on_buyer_id"
  end

  create_table "booktemplates", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "publisher_id"
    t.bigint "productsubtype_id"
    t.bigint "subcategory_id"
    t.string "Jsfilename"
    t.string "HTMLPrefix"
    t.integer "NrOfPages"
    t.integer "normal_price"
    t.integer "large_price"
    t.integer "normal_hardcover_extra_price"
    t.integer "large_hardcover_extra_price"
    t.text "booktemplatetexts", default: [], array: true
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
    t.string "text12"
    t.string "text13"
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

  create_table "categoryimages", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "image_id"
    t.bigint "imagecategory_id"
    t.index ["image_id"], name: "index_categoryimages_on_image_id"
    t.index ["imagecategory_id"], name: "index_categoryimages_on_imagecategory_id"
  end

  create_table "imagecategories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "imagegalleries", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "publisher_id"
    t.index ["publisher_id"], name: "index_imagegalleries_on_publisher_id"
  end


  create_table "rimages", force: :cascade do |t|
    t.string "format"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "images", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "imagegallery_id"
    t.string "type"
    t.string "filename"
    t.string "format"
    t.index ["imagegallery_id"], name: "index_images_on_imagegallery_id"
  end

  create_table "orders", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "book_id"
    t.bigint "buyer_id"
    t.integer "order_amount"
    t.integer "number_of_books"
    t.index ["book_id"], name: "index_orders_on_book_id"
    t.index ["buyer_id"], name: "index_orders_on_buyer_id"
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
    t.boolean "required"
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
    t.string "streetname_and_number"
    t.string "postalcode"
    t.string "city"
    t.string "country"
    t.string "phonenumber"
    t.string "addressee"
    t.string "streetname_and_number2"
    t.string "postalcode2"
    t.string "city2"
    t.string "country2"
    t.boolean "afleveradreshetzelfde", default: true
    t.integer "loyalty_points"
    t.string "company_name"
    t.string "company_name2"
    t.boolean "admin", default: false
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
  add_foreign_key "booktemplates", "productsubtypes"
  add_foreign_key "booktemplates", "subcategories"
  add_foreign_key "booktemplates", "users", column: "publisher_id"
  add_foreign_key "booktemplatetexts", "booktemplates"
  add_foreign_key "booktexts", "books"
  add_foreign_key "categories", "images"
  add_foreign_key "categoryimages", "imagecategories"
  add_foreign_key "categoryimages", "images"
  add_foreign_key "imagegalleries", "users", column: "publisher_id"
  add_foreign_key "images", "imagegalleries"
  add_foreign_key "orders", "books"
  add_foreign_key "orders", "users", column: "buyer_id"
  add_foreign_key "productsubtypes", "producttypes"
  add_foreign_key "questions", "subcategories"
  add_foreign_key "subcategories", "categories"
  add_foreign_key "subcategories", "images"
end
