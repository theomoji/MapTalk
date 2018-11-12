class User < ApplicationRecord
  has_secure_password
  has_many :comments
  has_many :images
  has_many :hashtags, through: :image_tags


  validates :username, uniqueness: true, presence: true
  validates :email, uniqueness: true, presence: true 
end
