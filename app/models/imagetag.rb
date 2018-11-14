class Imagetag < ApplicationRecord
  belongs_to :image
  belongs_to :hashtag

  def hash_tag
  end


end
