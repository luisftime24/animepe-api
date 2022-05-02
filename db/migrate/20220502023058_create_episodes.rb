# frozen_string_literal: true

class CreateEpisodes < ActiveRecord::Migration[7.0]
  def change
    create_table :episodes do |t|
      t.string :url
      t.references :anime, null: false, foreign_key: true

      t.timestamps
    end
  end
end
