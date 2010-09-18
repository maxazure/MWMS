# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.
require "RedCloth"
class ApplicationController < ActionController::Base
  
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
  
  protected
    def authorize
      unless User.find_by_id(session[:user_id])
        flash[:notice] = "请登录!"
        redirect_to("/admin/login")
      end
    end
end
