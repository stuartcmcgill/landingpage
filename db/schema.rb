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

ActiveRecord::Schema.define(version: 20140325060219) do

  create_table "landing_pages", force: true do |t|
    t.string   "headline"
    t.string   "subhead"
    t.string   "image"
    t.string   "captionbutton_text"
    t.string   "call_to_action"
    t.string   "button_color"
    t.string   "background_color"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "head_color"
    t.string   "head_font"
    t.string   "body_font"
    t.string   "image_caption"
    t.text     "body_copy"
    t.text     "video"
    t.string   "video_caption"
    t.string   "guarantee"
    t.text     "privacy"
    t.string   "button2_text"
    t.string   "button2_color"
    t.string   "campaign_channel"
    t.string   "keyword_group"
    t.string   "campaign_name"
  end

  create_table "prospects", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "mobile"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "landing_page_id"
  end

  add_index "prospects", ["landing_page_id"], name: "index_prospects_on_landing_page_id"

  create_table "users", force: true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
