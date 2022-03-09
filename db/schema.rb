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

ActiveRecord::Schema.define(version: 20220309021512) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "amortization_schedules", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_amortization_schedules_on_user_id"
  end

  create_table "amortization_schedules_debt_accounts", id: false, force: :cascade do |t|
    t.bigint "amortization_schedule_id", null: false
    t.bigint "debt_account_id", null: false
    t.index ["amortization_schedule_id", "debt_account_id"], name: "idx_amort_sched_debt"
    t.index ["debt_account_id", "amortization_schedule_id"], name: "idx_debt_amort_sched"
  end

  create_table "debt_accounts", force: :cascade do |t|
    t.string "account_name"
    t.integer "principle"
    t.integer "interest_rate"
    t.integer "minimum_payment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_debt_accounts_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "surname"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "amortization_schedules", "users"
  add_foreign_key "debt_accounts", "users"
end
