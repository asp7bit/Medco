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

ActiveRecord::Schema.define(:version => 20120728205731) do

  create_table "branches", :force => true do |t|
    t.string   "kode"
    t.text     "keterangan"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "categories", :force => true do |t|
    t.string   "kode"
    t.string   "tipe"
    t.string   "kelompok_asset"
    t.text     "keterangan"
    t.string   "parent_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "divisions", :force => true do |t|
    t.string   "kode"
    t.text     "keterangan"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "inventories", :force => true do |t|
    t.string   "kode_inventaris"
    t.string   "nama_asset"
    t.string   "jenis_asset"
    t.string   "merk_asset"
    t.string   "model_asset"
    t.string   "material_asset"
    t.decimal  "harga",           :precision => 10, :scale => 0
    t.integer  "qty_baik"
    t.integer  "qty_rusak"
    t.string   "lokasi"
    t.text     "keterangan"
    t.datetime "created_at",                                     :null => false
    t.datetime "updated_at",                                     :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "password_digest"
    t.string   "slug"
    t.string   "unit_kerja"
    t.string   "status"
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
    t.string   "remember_token"
    t.boolean  "admin",           :default => false
  end

  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"

end
