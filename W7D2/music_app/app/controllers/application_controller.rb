class ApplicationController < ActionController::Base
#CRRLLL

  helper_method :logged_in?, :current_user

  def current_user
    @current_user ||= User.find_by(session_token: session[:session_token])
  end

  def require_log_in!
    redirect_to new_session_url unless logged_in?
  end

  def logged_in?
    !!current_user
  end

  def log_in!(user)
    @current_user = user
    session[:session_token] = user.reset_session_token!
  end

  def log_out
    current_user.reset_session_token
    session[:session_token] = nil
  end

end
