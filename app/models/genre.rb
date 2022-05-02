# frozen_string_literal: true

class Genre < ApplicationRecord
  has_many :favorites
  has_and_belongs_to_many :animes
end
