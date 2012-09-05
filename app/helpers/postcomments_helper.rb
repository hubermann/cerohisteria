module PostcommentsHelper
  def bringcomments(postid)
  @comments = Postcomment.where(:post_id => postid)
  end
end
