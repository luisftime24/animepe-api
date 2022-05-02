# frozen_string_literal: true

class User < ApplicationRecord
  has_many :favorites
  has_secure_token
  has_secure_password
end
