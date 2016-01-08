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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160107220536) do

  create_table "credentials", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "name"
    t.string   "file_file_name"
    t.string   "file_content_type"
    t.integer  "file_file_size"
    t.datetime "file_updated_at"
    t.string   "description"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "issues", force: :cascade do |t|
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "reasoning"
  end

  create_table "issues_media", force: :cascade do |t|
    t.integer  "issue_id"
    t.integer  "medium_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "issues_media", ["issue_id"], name: "index_issues_media_on_issue_id"
  add_index "issues_media", ["medium_id"], name: "index_issues_media_on_medium_id"

  create_table "issues_posts", force: :cascade do |t|
    t.integer  "issue_id"
    t.integer  "post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "issues_posts", ["issue_id"], name: "index_issues_posts_on_issue_id"
  add_index "issues_posts", ["post_id"], name: "index_issues_posts_on_post_id"

  create_table "issues_users", force: :cascade do |t|
    t.integer  "issue_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "media", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "type"
    t.string   "name"
    t.string   "author"
    t.string   "description"
    t.string   "media_file_name"
    t.string   "media_content_type"
    t.integer  "media_file_size"
    t.datetime "media_updated_at"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "messages", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "subject"
    t.string   "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "photo_comments", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "photo_id"
    t.string   "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "photo_comments", ["photo_id"], name: "index_photo_comments_on_photo_id"
  add_index "photo_comments", ["user_id"], name: "index_photo_comments_on_user_id"

  create_table "photos", force: :cascade do |t|
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.integer  "user_id"
    t.string   "description"
    t.string   "position"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "post_comments", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "post_id"
    t.string   "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "post_comments", ["post_id"], name: "index_post_comments_on_post_id"
  add_index "post_comments", ["user_id"], name: "index_post_comments_on_user_id"

  create_table "posts", force: :cascade do |t|
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.integer  "user_id"
    t.string   "title"
    t.string   "body"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "posts", ["user_id"], name: "index_posts_on_user_id"

  create_table "profiles", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "fname"
    t.string   "lname"
    t.string   "username"
    t.string   "street_address"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.string   "zip"
    t.string   "email"
    t.string   "cell"
    t.string   "string"
    t.string   "fbhandle"
    t.string   "twhandle"
    t.string   "lihandle"
    t.string   "insthandle"
    t.boolean  "hractive"
    t.string   "focuses"
    t.string   "title"
    t.string   "profession"
    t.string   "consultant_skills"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string   "volunteer_skills"
  end

  create_table "users", force: :cascade do |t|
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
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
