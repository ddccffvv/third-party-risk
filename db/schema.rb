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

ActiveRecord::Schema.define(version: 2019_03_15_132148) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "street"
    t.string "zip_code"
    t.text "description"
    t.bigint "country_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "city"
    t.string "state"
    t.string "privacy_contact"
    t.string "security_contact"
    t.string "phone"
    t.string "slug"
    t.index ["country_id"], name: "index_companies_on_country_id"
    t.index ["slug"], name: "index_companies_on_slug", unique: true
  end

  create_table "controller_processors", force: :cascade do |t|
    t.bigint "controller_id"
    t.bigint "processor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["controller_id"], name: "index_controller_processors_on_controller_id"
    t.index ["processor_id"], name: "index_controller_processors_on_processor_id"
  end

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.boolean "is_eea"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string "slug", null: false
    t.integer "sluggable_id", null: false
    t.string "sluggable_type", limit: 50
    t.string "scope"
    t.datetime "created_at"
    t.index ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
    t.index ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
    t.index ["sluggable_type", "sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_type_and_sluggable_id"
  end

  create_table "services", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.bigint "company_id"
    t.text "typical_data"
    t.string "security_information_url"
    t.string "gdpr_information_url"
    t.string "list_of_processors_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "country_id"
    t.string "slug"
    t.index ["company_id"], name: "index_services_on_company_id"
    t.index ["country_id"], name: "index_services_on_country_id"
    t.index ["slug"], name: "index_services_on_slug", unique: true
  end

  add_foreign_key "companies", "countries"
  add_foreign_key "controller_processors", "services", column: "controller_id"
  add_foreign_key "controller_processors", "services", column: "processor_id"
  add_foreign_key "services", "companies"
  add_foreign_key "services", "countries"
end
