class ApplicationController < ActionController::Base

  protect_from_forgery

  before_filter :authenticate, :except => [:login, :show]

  protected

  def authenticate
  #  authenticate_or_request_with_http_basic do |user_name, password|
  #    user_name == 'admin' && password == 'password'
  #  end
    unless User.find_by_id(session[:user_id])
      flash[:notice] = "Please Login"
      redirect_to(:controller => "admin", :action => "login")
    end

  end

end
