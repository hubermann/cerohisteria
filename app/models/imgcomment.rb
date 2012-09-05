class Imgcomment < ActiveRecord::Base
  attr_accessible :body, :email, :image_id, :nickname
  belongs_to :image
end
