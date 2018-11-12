class Imagetag < ApplicationRecord
  belongs_to :image
  belongs_to :hashtag 
end
