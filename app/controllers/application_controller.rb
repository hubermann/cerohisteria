class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :admin?
  
  before_filter :meta_defaults
    private

   def meta_defaults
      @meta_title = ""
      @meta_keywords = ""
      @meta_description = ""
    end
    
    
  
    protected

    def admin?
<<<<<<< HEAD
    session[:password] == '******'
=======
    session[:password] == '*******'
>>>>>>> **
    end

    def authorize
      unless admin?
        flash[:error] = "Ingreso no admitido."
        redirect_to root_path
        false
      end
    end
  
  

end
