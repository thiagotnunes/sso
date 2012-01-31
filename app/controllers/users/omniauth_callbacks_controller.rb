class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
 def google_oauth2
   callback_handler_for(:google)
 end 

 def facebook
   callback_handler_for(:facebook)
 end

 def github
   callback_handler_for(:github)
 end

 def callback_handler_for(provider)
  @user = User.find_for_provider(request.env["omniauth.auth"], current_user)

  if @user.persisted?
    flash[:notice] = I18n.t "devise.omniauth_callbacks.success", :kind => provider.to_s.capitalize
    sign_in_and_redirect @user, :event => :authentication
  else
    session["devise.#{provider}_data"] = request.env[omniauth.auth]
    redirect_to new_user_registration_url
  end
 end
end
