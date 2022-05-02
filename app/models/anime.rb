# frozen_string_literal: true

class Anime < ApplicationRecord
  has_and_belongs_to_many :genres
  has_and_belongs_to_many :demographics

  has_many :episodes, dependent: :destroy
end
