# frozen_string_literal: true

class Episode < ApplicationRecord
  belongs_to :anime, counter_cache: :episodes_counter
end
