class User < ApplicationRecord
  has_many :plants, through: :favorites
  has_many :favorites
end
