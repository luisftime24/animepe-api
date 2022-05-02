# frozen_string_literal: true

class CreateAnimes < ActiveRecord::Migration[7.0]
  def change
    create_table :animes do |t|
      t.string :image
      t.string :title
      t.string :title_japanese
      t.string :type
      t.integer :episodes
      t.string :status
      t.boolean :airing
      t.string :aired
      t.float :score
      t.text :synopsis
      t.string :season
      t.integer :year
      t.string :episodes_counter, default: 0

      t.timestamps
    end
  end
end
