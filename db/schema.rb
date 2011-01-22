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

ActiveRecord::Schema.define(:version => 20110122010012) do

  create_table "blog_settings", :force => true do |t|
    t.integer  "blogger_id"
    t.integer  "skin_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bloggers", :force => true do |t|
    t.string   "email",                               :default => "", :null => false
    t.string   "encrypted_password",   :limit => 128, :default => "", :null => false
    t.string   "password_salt",                       :default => "", :null => false
    t.string   "reset_password_token"
    t.string   "remember_token"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                       :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name",                                :default => "", :null => false
    t.integer  "point",                               :default => 0,  :null => false
  end

  add_index "bloggers", ["email"], :name => "index_bloggers_on_email", :unique => true
  add_index "bloggers", ["name"], :name => "index_bloggers_on_name"
  add_index "bloggers", ["reset_password_token"], :name => "index_bloggers_on_reset_password_token", :unique => true

  create_table "comments", :force => true do |t|
    t.integer  "entry_id"
    t.string   "title"
    t.string   "sentence"
    t.string   "author"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "entries", :force => true do |t|
    t.string   "title"
    t.string   "sentence"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "blogger_id",  :default => 0, :null => false
    t.integer  "public_flag", :default => 0, :null => false
  end

  add_index "entries", ["blogger_id", "public_flag", "updated_at"], :name => "index_entries_on_blogger_id_and_public_flag_and_updated_at"
  add_index "entries", ["blogger_id", "updated_at"], :name => "index_entries_on_blogger_id_and_updated_at"

end