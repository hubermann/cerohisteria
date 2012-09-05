class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :admin?
  
  before_filter :meta_defaults
    private

   def meta_defaults
      @meta_title = ""
      @meta_keywords = "parejas, cuernos, recomendaciones para hombres,recomendaciones para mujeres, sexo "
      @meta_description = "recomendaciones para hombres y mujeres sobre relaciones."
    end
    
    
  
    protected

    def admin?
    session[:password] == 'plokij2010'
    end

    def authorize
      unless admin?
        flash[:error] = "Ingreso no admitido."
        redirect_to root_path
        false
      end
    end
  
  

end
