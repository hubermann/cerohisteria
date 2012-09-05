class Comment < ActiveRecord::Base
  attr_accessible :nickname,:email, :body

  
  
  belongs_to :commentable, :polymorphic => true
  has_many :comments, :as => :commentable
  
  validates_presence_of :nickname, :message => "Debe completar este campo"
  validates_presence_of :email, :message => "Debe completar este campo"
  validates_format_of :email, :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i, :message => "formato no valido"
  validates_presence_of :body, :message => "Debe completar el mensaje"

  
  def post
    return @post if defined?(@post)
    @post = commentable.is_a?(Post) ? commentable : commentable.post
  end
  
end