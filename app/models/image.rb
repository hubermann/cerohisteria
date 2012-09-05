class Image < ActiveRecord::Base
  attr_accessible :filename, :keywords, :post_id, :title
  belongs_to :post
  has_many :imgcomments
end
