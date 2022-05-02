# frozen_string_literal: true

class AnimesGenre < ApplicationRecord
  belongs_to :anime
  belongs_to :genre
end
