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

ActiveRecord::Schema.define(version: 2019_09_04_103705) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "airdrops", force: :cascade do |t|
    t.string "title"
    t.float "amount"
    t.string "crypto"
    t.datetime "start_date"
    t.datetime "end_date"
    t.text "description"
    t.string "photo"
    t.string "location"
    t.string "quote"
    t.string "link"
    t.boolean "fix"
    t.float "min"
    t.float "max"
    t.integer "winner"
    t.boolean "ref_link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_airdrops_on_user_id"
  end

  create_table "invites", force: :cascade do |t|
    t.bigint "airdrop_id"
    t.bigint "user_id"
    t.string "status", default: "pending"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email"
    t.index ["airdrop_id"], name: "index_invites_on_airdrop_id"
    t.index ["user_id"], name: "index_invites_on_user_id"
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
    t.string "public_key"
    t.boolean "admin"
    t.string "nickname"
    t.string "photo"
    t.integer "age"
    t.string "affiliate_link"
    t.string "invitation_token"
    t.datetime "invitation_created_at"
    t.datetime "invitation_sent_at"
    t.datetime "invitation_accepted_at"
    t.integer "invitation_limit"
    t.string "invited_by_type"
    t.bigint "invited_by_id"
    t.integer "invitations_count", default: 0
    t.float "wallet_balance", default: 0.0
    t.string "public_key_eth"
    t.string "public_key_ltc"
    t.float "wallet_balance_ltc", default: 0.0
    t.float "wallet_balance_eth", default: 0.0
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["invitation_token"], name: "index_users_on_invitation_token", unique: true
    t.index ["invitations_count"], name: "index_users_on_invitations_count"
    t.index ["invited_by_id"], name: "index_users_on_invited_by_id"
    t.index ["invited_by_type", "invited_by_id"], name: "index_users_on_invited_by_type_and_invited_by_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "airdrops", "users"
  add_foreign_key "invites", "airdrops"
  add_foreign_key "invites", "users"
end
