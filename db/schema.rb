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

ActiveRecord::Schema.define(version: 20140616041714) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "remember_token"
    t.string   "name"
    t.string   "location"
    t.string   "website"
    t.string   "github"
    t.text     "welcome_section"
    t.text     "about_section"
    t.text     "education_section"
    t.text     "experience_section"
    t.text     "projects_section"
    t.text     "skills_section"
    t.boolean  "gravatar",                  default: true
    t.boolean  "enable_about_section",      default: true
    t.boolean  "enable_education_section",  default: true
    t.boolean  "enable_experience_section", default: true
    t.boolean  "enable_projects_section",   default: true
    t.boolean  "enable_skills_section",     default: true
    t.boolean  "enable_welcome_section",    default: true
  end

  add_index "users", ["remember_token"], name: "index_users_on_remember_token", using: :btree

end
