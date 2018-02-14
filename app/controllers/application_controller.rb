class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  protected

  def restrict_access
    # Block direct access
    if !current_user
      flash[:alert] = "You must log in, Mr. Not Logged In Guy!"
      redirect_to new_session_path
    end

  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  # Will return the logget in user by checking the session[:user_id] value
  helper_method :current_user
  # -> now is possible to call current_user from controllers/views

end
