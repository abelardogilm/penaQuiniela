# encoding: UTF-8
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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120501084415) do

  create_table "matches", :force => true do |t|
    t.integer  "quiniela_id"
    t.integer  "team1_id"
    t.integer  "team2_id"
    t.date     "matchday"
    t.integer  "goals1"
    t.integer  "goals2"
    t.string   "res"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "matches", ["quiniela_id"], :name => "index_matches_on_quiniela_id"
  add_index "matches", ["team1_id"], :name => "index_matches_on_team1_id"
  add_index "matches", ["team2_id"], :name => "index_matches_on_team2_id"

  create_table "quinielas", :force => true do |t|
    t.date     "quiniela_date"
    t.integer  "code"
    t.decimal  "p15"
    t.integer  "a15"
    t.decimal  "p14"
    t.integer  "a14"
    t.decimal  "p13"
    t.integer  "a13"
    t.decimal  "p12"
    t.integer  "a12"
    t.decimal  "p11"
    t.integer  "a11"
    t.decimal  "p10"
    t.integer  "a10"
    t.decimal  "bote"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teams", :force => true do |t|
    t.string   "name"
    t.decimal  "budget"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "last_name"
    t.text     "profile"
    t.string   "address"
    t.string   "postal_code"
    t.string   "city"
    t.string   "facebook"
    t.string   "twiter"
    t.string   "mobile"
    t.string   "phone"
    t.date     "birthday"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
