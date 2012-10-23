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

ActiveRecord::Schema.define(:version => 20121022224330) do

  create_table "answers", :force => true do |t|
    t.integer  "user_id"
    t.integer  "session_id"
    t.integer  "block_id"
    t.integer  "question_id"
    t.integer  "trial_number"
    t.integer  "instruction_id"
    t.boolean  "answer"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "instructions", :force => true do |t|
    t.text     "header"
    t.text     "footer"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "questions", :force => true do |t|
    t.boolean  "expected_answer"
    t.string   "text"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "uid"
    t.integer  "age"
    t.boolean  "gender"
    t.integer  "handedness"
    t.boolean  "answer_side"
    t.boolean  "eyes"
    t.integer  "session"
    t.boolean  "robot"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

end
