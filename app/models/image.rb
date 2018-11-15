class Image < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :imagetags
  has_many :hashtags, through: :imagetags
end
