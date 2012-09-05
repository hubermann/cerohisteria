class Category < ActiveRecord::Base
  attr_accessible :avatar, :name, :slug
  has_many :posts
end
