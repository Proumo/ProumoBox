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

ActiveRecord::Schema.define(version: 20140205174640) do

  create_table "anuncios", force: true do |t|
    t.integer  "campanha_id", null: false
    t.integer  "bbapp_id",    null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bb_apps", force: true do |t|
    t.integer  "desenvolvedor_id",                           null: false
    t.string   "nome",             limit: 45,                null: false
    t.string   "versao",           limit: 25,                null: false
    t.float    "preco",                                      null: false
    t.boolean  "sandbox",                     default: true, null: false
    t.text     "codigo_html",                                null: false
    t.text     "codigo_css",                                 null: false
    t.text     "codigo_js"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "campanhas", force: true do |t|
    t.integer  "anunciante_id",                           null: false
    t.string   "nome",          limit: 45,                null: false
    t.boolean  "sandbox",                  default: true, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "usuarios", force: true do |t|
    t.string   "email",      limit: 75, null: false
    t.string   "senha",      limit: 32, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
