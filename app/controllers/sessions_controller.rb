class SessionsController < ApplicationController 

  def new
  end

  def create
   omniauth = request.env["omniauth.auth"] 
   user = User.find_by_uid_and_provider(omniauth[:uid].to_s, omniauth[:provider]) || User.create_with_omniauth!(omniauth)
   session[:user_id] = user.id

   redirect_to root_url, :notice => "Signed in!"
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "Signed out!"
  end

end
