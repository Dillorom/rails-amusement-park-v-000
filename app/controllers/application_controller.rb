class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def home
  end
  
  def current_user
    session[:user_id] = user.id
  end

  def logged_in
    current_user
  end
end
