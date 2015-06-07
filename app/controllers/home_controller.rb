class HomeController < ApplicationController
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  layout "main", except: [:landing]

  def landing
  	render action: 'landing'
  end

  def post
  	render action: 'post'
  end

  def post_read
    render action: 'post_read'
  end

  def about
    render action: 'about'
  end

  def project
    render action: 'project'
  end
  
end
