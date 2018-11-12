class User < ApplicationRecord
  has_secure_password
  has_many :comments
  has_many :images
  has_many :hashtags, through: :image_tags  
end
