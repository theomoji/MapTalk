class Image < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :image_tags
  has_many :hashtags, through: :image_tags 
end
