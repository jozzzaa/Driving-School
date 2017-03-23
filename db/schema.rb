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

ActiveRecord::Schema.define(version: 20170323163137) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appointments", force: :cascade do |t|
    t.integer  "student_id"
    t.integer  "instructor_id"
    t.date     "appointment_date"
    t.time     "appointment_time"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["instructor_id"], name: "index_appointments_on_instructor_id", using: :btree
    t.index ["student_id"], name: "index_appointments_on_student_id", using: :btree
  end

  create_table "campaigns", force: :cascade do |t|
    t.string   "ref_code"
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["id"], name: "index_campaigns_on_id", using: :btree
    t.index ["ref_code"], name: "index_campaigns_on_ref_code", using: :btree
  end

  create_table "emails", force: :cascade do |t|
    t.text     "subject"
    t.text     "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "instructors", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.string   "transmission"
    t.string   "gender"
    t.string   "address_text"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["id"], name: "index_instructors_on_id", using: :btree
  end

  create_table "instructors_locations", force: :cascade do |t|
    t.integer  "instructor_id"
    t.integer  "location_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["instructor_id"], name: "index_instructors_locations_on_instructor_id", using: :btree
    t.index ["location_id"], name: "index_instructors_locations_on_location_id", using: :btree
  end

  create_table "leads", force: :cascade do |t|
    t.text     "name"
    t.text     "email"
    t.string   "phone_number"
    t.string   "gender_pref"
    t.text     "transmission_pref"
    t.string   "location"
    t.text     "hours_completed"
    t.text     "license_by"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "campaign_id"
    t.string   "share_token"
    t.string   "referred_by"
    t.integer  "status_id"
    t.index ["campaign_id"], name: "index_leads_on_campaign_id", using: :btree
  end

  create_table "locations", force: :cascade do |t|
    t.integer  "postcode"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["id"], name: "index_locations_on_id", using: :btree
  end

  create_table "sms", force: :cascade do |t|
    t.text     "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "statuses", force: :cascade do |t|
    t.string   "status"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "students", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.text     "address"
    t.integer  "postcode"
    t.string   "ref_type"
    t.integer  "ref_person"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["id"], name: "index_students_on_id", using: :btree
  end

  create_table "subscriptions", force: :cascade do |t|
    t.text     "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "user_name"
    t.string   "email"
    t.text     "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
