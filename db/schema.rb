# frozen_string_literal: true

# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 20_220_502_023_148) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'animes', force: :cascade do |t|
    t.string 'image'
    t.string 'title'
    t.string 'title_japanese'
    t.string 'type'
    t.integer 'episodes'
    t.string 'status'
    t.boolean 'airing'
    t.string 'aired'
    t.float 'score'
    t.text 'synopsis'
    t.string 'season'
    t.integer 'year'
    t.string 'episodes_counter', default: '0'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'animes_demographics', force: :cascade do |t|
    t.bigint 'anime_id', null: false
    t.bigint 'demographic_id', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['anime_id'], name: 'index_animes_demographics_on_anime_id'
    t.index ['demographic_id'], name: 'index_animes_demographics_on_demographic_id'
  end

  create_table 'animes_genres', force: :cascade do |t|
    t.bigint 'anime_id', null: false
    t.bigint 'genre_id', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['anime_id'], name: 'index_animes_genres_on_anime_id'
    t.index ['genre_id'], name: 'index_animes_genres_on_genre_id'
  end

  create_table 'demographics', force: :cascade do |t|
    t.string 'name'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'episodes', force: :cascade do |t|
    t.string 'url'
    t.bigint 'anime_id', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['anime_id'], name: 'index_episodes_on_anime_id'
  end

  create_table 'favorites', force: :cascade do |t|
    t.bigint 'user_id', null: false
    t.bigint 'anime_id', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['anime_id'], name: 'index_favorites_on_anime_id'
    t.index ['user_id'], name: 'index_favorites_on_user_id'
  end

  create_table 'genres', force: :cascade do |t|
    t.string 'name'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'users', force: :cascade do |t|
    t.string 'username'
    t.string 'email'
    t.string 'password_digest'
    t.string 'token'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['token'], name: 'index_users_on_token', unique: true
  end

  add_foreign_key 'animes_demographics', 'animes'
  add_foreign_key 'animes_demographics', 'demographics'
  add_foreign_key 'animes_genres', 'animes'
  add_foreign_key 'animes_genres', 'genres'
  add_foreign_key 'episodes', 'animes'
  add_foreign_key 'favorites', 'animes'
  add_foreign_key 'favorites', 'users'
end
