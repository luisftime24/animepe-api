# frozen_string_literal: true

class CreateAnimesGenres < ActiveRecord::Migration[7.0]
  def change
    create_table :animes_genres do |t|
      t.references :anime, null: false, foreign_key: true
      t.references :genre, null: false, foreign_key: true

      t.timestamps
    end
  end
end
