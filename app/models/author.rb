class Author < ActiveRecord::Base
  attr_accessible :avatar, :description, :nickname
  has_many :posts
end
