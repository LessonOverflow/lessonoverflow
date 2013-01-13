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

ActiveRecord::Schema.define(:version => 20130113233122) do

  create_table "resources", :force => true do |t|
    t.string   "author"
    t.string   "common_core"
    t.text     "description"
    t.string   "educational_use"
    t.string   "in_language"
    t.string   "intended_end_use_role"
    t.string   "interactivity_type"
    t.string   "is_based_on_url"
    t.string   "learning_resource_type"
    t.string   "location"
    t.string   "publisher_id"
    t.string   "time_required"
    t.string   "title"
    t.string   "typical_age_range"
    t.string   "use_rights_url"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
  end

end
