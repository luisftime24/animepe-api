# frozen_string_literal: true

class CreateAnimesDemographics < ActiveRecord::Migration[7.0]
  def change
    create_table :animes_demographics do |t|
      t.references :anime, null: false, foreign_key: true
      t.references :demographic, null: false, foreign_key: true

      t.timestamps
    end
  end
end
