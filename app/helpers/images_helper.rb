module ImagesHelper
  
  def bringmainimg(mainimg)

  		image = Image.find(mainimg)

  		@image_file =  image.filename 
  		@image_title = image.title
  		@image_keywords = image.keywords
  	end
  	
  	def bringimages(post)
    		@images = Image.where(:post_id => post)
    end
  	
end
