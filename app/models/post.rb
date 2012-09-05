class Post < ActiveRecord::Base
  attr_accessible :author_id, :body, :category_id, :keywords, :mainimg, :slug, :title, :recomended
  belongs_to :author
  belongs_to :category
  validates :category_id, :presence => true
  has_many :images
  has_many :comments, :as => :commentable
  #accepts_nested_attributes_for :postcomments
  
  before_save :slug_from_title
  private
  
  def slug_from_title
    titleorig =self.title
    titleorig= titleorig.downcase
    titleorig.gsub! /['`]/,""
    titleorig.gsub! /\s*[^A-Za-z0-9\.\-]\s*/, '-'
    titleorig.gsub! /_+/,"-"
    titleorig.gsub! /\A[_\.]+|[_\.]+\z/,""
      
    self.slug = titleorig
  end
    
    
end
