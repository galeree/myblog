class DashboardController < ApplicationController
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  layout "main", except: [:signin]
  before_action :check_auth, :except => [:signin,:submit]

  def check_auth
    if !is_logged_in
      redirect_to "/signin"
    end
  end

  def signin
  	render action: 'signin'
  end

  def submit
  	if is_user
  		session[:username] = params[:username]
  		session[:password] = params[:password]
  		redirect_to "/post"
  	else
  		redirect_to "/signin"
  	end
  end

  def signout
  	reset_session
  	redirect_to "/post"
  end

  def post_new
  	render action: 'post_new'
  end

  def cat_new
  	render action: 'cat_new'
  end

  def novel_new
    render action: 'novel_new'
  end

  def song_new
    render action: 'song_new'
  end
  
end
