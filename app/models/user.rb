class User < ApplicationRecord
  has_many :cities
  acts_as_favoritor
  has_one :wishlist
end
