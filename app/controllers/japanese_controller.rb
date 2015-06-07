class JapaneseController < ApplicationController
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  layout "main"

  def index
  	render action: 'index'
  end

  def novel
    render action: 'novel'
  end

  def novel_read
    render action: 'novel_read'
  end

  def song
    render action: 'song'
  end

  def song_read
    render action: 'song_read'
  end
  
end