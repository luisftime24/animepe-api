# frozen_string_literal: true

class AnimesDemographic < ApplicationRecord
  belongs_to :anime
  belongs_to :demographic
end
