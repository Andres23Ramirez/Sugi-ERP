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

ActiveRecord::Schema.define(version: 20170506045732) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.string   "author_type"
    t.integer  "author_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree
  end

  create_table "admin_users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree
  end

  create_table "bills", force: :cascade do |t|
    t.integer  "number"
    t.date     "issueDate"
    t.date     "payDate"
    t.integer  "establishment_id"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.string   "state"
    t.integer  "amount_cents",     default: 0
    t.index ["establishment_id"], name: "index_bills_on_establishment_id", using: :btree
  end

  create_table "contrac_establishments", force: :cascade do |t|
    t.text     "description"
    t.string   "wayToPay"
    t.text     "porpuse"
    t.string   "file_name"
    t.date     "startDate"
    t.date     "endDate"
    t.integer  "establishment_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["establishment_id"], name: "index_contrac_establishments_on_establishment_id", using: :btree
  end

  create_table "contract_employees", force: :cascade do |t|
    t.date     "dateStart"
    t.date     "dateEnd"
    t.integer  "salary"
    t.integer  "employee_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["employee_id"], name: "index_contract_employees_on_employee_id", using: :btree
  end

  create_table "employees", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "cv_file"
    t.date     "date_hire"
    t.string   "position"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "salary_cents", default: 0
  end

  create_table "entries", force: :cascade do |t|
    t.text     "description"
    t.date     "date"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "amount_cents", default: 0
  end

  create_table "establishments", force: :cascade do |t|
    t.integer  "number"
    t.string   "name"
    t.integer  "numberPhone"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "outflows", force: :cascade do |t|
    t.text     "description"
    t.date     "date"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "type_service"
    t.integer  "price_cents",  default: 0
  end

  add_foreign_key "bills", "establishments"
  add_foreign_key "contrac_establishments", "establishments"
  add_foreign_key "contract_employees", "employees"
end
