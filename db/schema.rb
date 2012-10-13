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

ActiveRecord::Schema.define(:version => 20121013011654) do

  create_table "active_admin_comments", :force => true do |t|
    t.string   "resource_id",   :null => false
    t.string   "resource_type", :null => false
    t.integer  "author_id"
    t.string   "author_type"
    t.text     "body"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "namespace"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], :name => "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], :name => "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], :name => "index_admin_notes_on_resource_type_and_resource_id"

  create_table "bussiness_plans", :force => true do |t|
    t.string   "title"
    t.text     "vision"
    t.text     "reason"
    t.integer  "runtime"
    t.integer  "total_investment"
    t.integer  "net_margin"
    t.string   "roi"
    t.integer  "category_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.string   "status"
    t.integer  "wise_id"
    t.text     "coment"
  end

  add_index "bussiness_plans", ["category_id"], :name => "index_bussiness_plans_on_category_id"

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.integer  "pcategory_id"
  end

  create_table "entrepreneurs", :force => true do |t|
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "entrepreneurs", ["user_id"], :name => "index_entrepreneurs_on_user_id"

  create_table "pcategories", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "queries", :force => true do |t|
    t.integer  "bussiness_plan_id"
    t.integer  "entrepreneur_id"
    t.string   "question"
    t.integer  "status"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.integer  "wise_id"
  end

  add_index "queries", ["bussiness_plan_id"], :name => "index_queries_on_bussiness_plan_id"
  add_index "queries", ["entrepreneur_id"], :name => "index_queries_on_entrepreneur_id"

  create_table "replies", :force => true do |t|
    t.integer  "query_id"
    t.text     "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "replies", ["query_id"], :name => "index_replies_on_query_id"

  create_table "sells", :force => true do |t|
    t.string   "credir_car"
    t.datetime "date"
    t.string   "code"
    t.string   "address"
    t.integer  "bussiness_plan_id"
    t.integer  "entrepreneur_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  add_index "sells", ["bussiness_plan_id"], :name => "index_sells_on_bussiness_plan_id"
  add_index "sells", ["entrepreneur_id"], :name => "index_sells_on_entrepreneur_id"

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "",    :null => false
    t.string   "encrypted_password",     :default => "",    :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "name"
    t.string   "firstname"
    t.string   "lastname"
    t.string   "sexo"
    t.string   "document_type"
    t.string   "document_number"
    t.string   "cellular"
    t.string   "addres"
    t.string   "birth_date"
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
    t.boolean  "superadmin",             :default => false, :null => false
    t.string   "username"
    t.string   "persistence_token"
    t.integer  "guy"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "wises", :force => true do |t|
    t.string   "apellation"
    t.text     "summary"
    t.string   "website"
    t.string   "bank"
    t.string   "banck_account"
    t.integer  "user_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "wises", ["user_id"], :name => "index_wises_on_user_id"

end
