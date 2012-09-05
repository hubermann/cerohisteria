class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :admin?
  
  before_filter :meta_defaults,:load_sidebar
    private

   def meta_defaults
      @meta_title = ""
      @meta_keywords = ""
      @meta_description = ""
    end
  


    def load_sidebar
        @aside_recomendados = Post.where(:recomended =>true)
    end
    
  
    protected

    def admin?
    session[:password] == '******'
    end

    def authorize
      unless admin?
        flash[:error] = "Ingreso no admitido."
        redirect_to root_path
        false
      end
    end
  
  

end
