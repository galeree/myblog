class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method [:is_logged_in,:is_user]

  @@username = "Geru__San"
  @@password = "lovety"

  def is_logged_in
    session[:username] == @@username && session[:password] == @@password
  end

  def is_user
  	username = params[:username]
  	password = params[:password]
  	return username == @@username && password == @@password
  end

end
