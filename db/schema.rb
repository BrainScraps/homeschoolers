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

ActiveRecord::Schema.define(:version => 20130809222021) do

  create_table "completions", :force => true do |t|
    t.integer  "student_id"
    t.integer  "outcome_id"
    t.date     "date"
    t.string   "score"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "educators", :force => true do |t|
    t.string   "username",               :default => "", :null => false
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.integer  "family_id"
    t.string   "profile_picture"
    t.string   "profile"
    t.string   "city"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "educators", ["email"], :name => "index_educators_on_email", :unique => true
  add_index "educators", ["reset_password_token"], :name => "index_educators_on_reset_password_token", :unique => true
  add_index "educators", ["username"], :name => "index_educators_on_username", :unique => true

  create_table "families", :force => true do |t|
    t.string   "name"
    t.string   "motto"
    t.string   "photo"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "gettogethers", :force => true do |t|
    t.string   "name"
    t.datetime "start_time"
    t.datetime "end_time"
    t.text     "description"
    t.float    "lat"
    t.float    "long"
    t.string   "picture"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "outcomes", :force => true do |t|
    t.string   "grade_level"
    t.string   "subject"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "plans", :force => true do |t|
    t.integer  "family_id"
    t.integer  "gettogether_id"
    t.string   "confirmation"
    t.string   "students"
    t.integer  "educator_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "resources", :force => true do |t|
    t.text     "description"
    t.string   "url"
    t.string   "upload"
    t.integer  "price"
    t.string   "name"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.boolean  "public"
  end

  create_table "students", :force => true do |t|
    t.string   "name"
    t.string   "profile_picture"
    t.integer  "family_id"
    t.date     "birth"
    t.integer  "grade"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "email"
  end

end
