class SessionsController < ApplicationController
  def new
  end

  def login
    if user = User.authenticate(params[:name], params[:password])
     if user
      session[:user_id] = user.id
      uri =session[:original_url]
      session[:original_url] =nil
            redirect_to(uri||{:controller => 'admin', :action =>'index'})
    else
      flash.now[:alert]= "Invalid user/password combination"
    end
    end
  end

  def logout

      session[:user_id] = nil
      flash[:notice] ="Logged out"
      redirect_to (:action => "login")
  end

end
