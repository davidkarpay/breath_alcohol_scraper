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

ActiveRecord::Schema[7.2].define(version: 2025_04_09_021850) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "pdf_documents", force: :cascade do |t|
    t.bigint "source_url_id", null: false
    t.string "filename"
    t.string "file_path"
    t.string "status"
    t.datetime "downloaded_at"
    t.integer "file_size"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["source_url_id"], name: "index_pdf_documents_on_source_url_id"
  end

  create_table "source_urls", force: :cascade do |t|
    t.string "url"
    t.string "description"
    t.datetime "last_scanned_at"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "url_sources", force: :cascade do |t|
    t.string "url"
    t.string "description"
    t.datetime "last_scanned_at"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "web_sources", force: :cascade do |t|
    t.string "url"
    t.string "description"
    t.datetime "last_scanned_at"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "pdf_documents", "source_urls"
end
