# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100916085454) do

  create_table "admin_itemcontents", :force => true do |t|
    t.string   "title"
    t.integer  "item_typle"
    t.text     "summary"
    t.integer  "expert_id"
    t.text     "tell_of"
    t.integer  "user_id"
    t.integer  "catalog_id"
    t.integer  "click_counts"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "blogs", :force => true do |t|
    t.string   "title"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "catalogs", :force => true do |t|
    t.string   "sort_name"
    t.text     "remark"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "dailies", :force => true do |t|
    t.string   "empid"
    t.text     "daily_text"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "experts", :force => true do |t|
    t.string   "name"
    t.string   "job"
    t.string   "qq"
    t.string   "thumbnail"
    t.string   "smallphoto"
    t.string   "middlephoto"
    t.string   "largephoto"
    t.text     "record"
    t.string   "content_url"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "itemcatalogs", :force => true do |t|
    t.string   "name"
    t.string   "other_name"
    t.string   "itemcatalog_pic"
    t.integer  "expert_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "itemcontents", :force => true do |t|
    t.string   "title"
    t.integer  "item_type"
    t.text     "summary"
    t.integer  "expert_id"
    t.text     "tell_of"
    t.integer  "user_id"
    t.integer  "catalog_id"
    t.integer  "click_counts"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "pagename"
    t.text     "body"
  end

  create_table "keywords", :force => true do |t|
    t.string   "word"
    t.integer  "rank"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "catalog_id", :default => 0
  end

  create_table "links", :force => true do |t|
    t.string   "link_url"
    t.string   "domain"
    t.integer  "sh"
    t.integer  "is_curl"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sessions", :force => true do |t|
    t.string   "session_id", :null => false
    t.text     "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sessions", ["session_id"], :name => "index_sessions_on_session_id"
  add_index "sessions", ["updated_at"], :name => "index_sessions_on_updated_at"

  create_table "subjects", :force => true do |t|
    t.string   "title"
    t.integer  "user_id"
    t.text     "description"
    t.text     "body"
    t.text     "what"
    t.text     "tell_of"
    t.text     "how"
    t.text     "advantage"
    t.text     "notice"
    t.string   "expert"
    t.text     "cases"
    t.text     "commend"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "urllists", :force => true do |t|
    t.integer  "user_id"
    t.string   "title"
    t.string   "url"
    t.integer  "url_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "hashed_password"
    t.string   "salt"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
