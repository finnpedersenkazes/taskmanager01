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

ActiveRecord::Schema.define(version: 20161015000001) do

  create_table "tasks", force: :cascade do |t|
    t.string   "short_description"
    t.string   "long_description"
    t.string   "nature"
    t.string   "urgency"
    t.string   "duration"
    t.string   "attention_date"
    t.string   "deadline"
    t.string   "expiration_date"
    t.string   "planned_date"
    t.string   "starting_time"
    t.string   "removed_date"
    t.string   "status"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

end
