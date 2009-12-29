# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20091226223934) do

  create_table "actors", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "picture_file_name"
    t.string   "picture_content_type"
    t.integer  "picture_file_size",    :precision => 38, :scale => 0
    t.datetime "picture_updated_at"
    t.string   "name"
  end

  create_table "actors_movies", :id => false, :force => true do |t|
    t.integer "actor_id", :precision => 38, :scale => 0
    t.integer "movie_id", :precision => 38, :scale => 0
  end

  add_index "actors_movies", ["actor_id"], :name => "i_actors_movies_actor_id"
  add_index "actors_movies", ["movie_id"], :name => "i_actors_movies_movie_id"

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

# Could not dump table "htmldb_plan_table" because of following StandardError
#   Unknown type 'LONG' for column 'other'

  create_table "movies", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "director"
    t.datetime "premiere"
    t.integer  "photo_id",           :precision => 38, :scale => 0
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size",    :precision => 38, :scale => 0
    t.datetime "photo_updated_at"
    t.integer  "category_id",        :precision => 38, :scale => 0
  end

end
