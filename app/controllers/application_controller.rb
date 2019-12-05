class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_user, :is_logged?, :require_user

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def is_logged?
    !!current_user
  end

  def require_user
    if !is_logged?
      redirect_to root_path
    end
  end

end
