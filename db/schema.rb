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

ActiveRecord::Schema.define(version: 20160217204119) do

  create_table "comment_replies", force: :cascade do |t|
    t.text    "content"
    t.integer "user_id"
    t.integer "comment_id"
    t.integer "upvotes",    default: 1
  end

  create_table "comments", force: :cascade do |t|
    t.text    "content"
    t.integer "user_id"
    t.integer "post_id"
    t.integer "upvotes", default: 1
  end

  create_table "moderators", force: :cascade do |t|
    t.integer "user_id"
    t.integer "subreddit_id"
  end

  create_table "post_types", force: :cascade do |t|
    t.string "name"
  end

  create_table "posts", force: :cascade do |t|
    t.string  "title"
    t.string  "link"
    t.text    "content"
    t.integer "post_type_id"
    t.integer "user_id"
    t.integer "subreddit_id"
    t.integer "upvotes",      default: 1
  end

  create_table "subreddits", force: :cascade do |t|
    t.string  "name"
    t.text    "description"
    t.boolean "is_private",  default: false
  end

  create_table "subscription_requests", force: :cascade do |t|
    t.integer "user_id"
    t.integer "subscription_id"
  end

  create_table "subscriptions", force: :cascade do |t|
    t.integer "user_id"
    t.integer "subreddit_id"
    t.boolean "access"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "password_digest"
  end

end
