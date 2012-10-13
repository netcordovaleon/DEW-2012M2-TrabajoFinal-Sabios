class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_user
  
	def authenticate_active_admin_user!
		authenticate_user! 
		unless current_user.superadmin?
			flash[:alert] = "Unauthorized Access!"
			redirect_to root_path 
		end
	end
  
  private
  
  def current_user_session
    return @current_user_session if defined?(@current_user_session)
    @current_user_session = UserSession.find
  end
  
  def current_user
    return @current_user if defined?(@current_user)
    @current_user = current_user_session && current_user_session.record
  end
  
end
