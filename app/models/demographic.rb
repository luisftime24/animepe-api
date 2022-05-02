# frozen_string_literal: true

class Demographic < ApplicationRecord
  has_and_belongs_to_many :animes
end
