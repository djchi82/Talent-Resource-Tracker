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

ActiveRecord::Schema.define(:version => 20111111001015) do

  create_table "skill_sets", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "skill_sets", ["name"], :name => "by_skill_set_id"
  add_index "skill_sets", ["name"], :name => "by_skill_set_name"

  create_table "skill_sets_skills", :id => false, :force => true do |t|
    t.integer "skill_id"
    t.integer "skill_set_id"
  end

  add_index "skill_sets_skills", ["skill_set_id", "skill_id"], :name => "by_skill_set_skill"

  create_table "skills", :force => true do |t|
    t.string   "name",       :null => false
    t.text     "desc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "skills", ["id"], :name => "by_skill_id"
  add_index "skills", ["name"], :name => "by_skill_name"

  create_table "skills_talents", :id => false, :force => true do |t|
    t.integer "skill_id"
    t.integer "talent_id"
  end

  add_index "skills_talents", ["skill_id", "talent_id"], :name => "by_skill_talent"

  create_table "talents", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "phone"
    t.string   "email"
    t.text     "address"
    t.text     "comments"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "type_id"
    t.string   "resume_file_name"
    t.string   "resume_content_type"
    t.integer  "resume_file_size"
    t.datetime "resume_updated_at"
    t.boolean  "interview_conducted"
    t.string   "trex_contact"
    t.string   "tier"
  end

  add_index "talents", ["id", "type_id"], :name => "by_talent_type"
  add_index "talents", ["name"], :name => "by_talent_name"

  create_table "types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "types", ["id"], :name => "by_type_id"
  add_index "types", ["name"], :name => "by_type_name"

end
