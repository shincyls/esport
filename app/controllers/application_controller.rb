class ApplicationController < ActionController::Base

  
  def current_number
    current_number = 1
  end

  def current_user
    if session[:user_id]
      @current_user ||= User.find_by(id: session[:user_id])
    end
  end
  
  private
  # Returns true if current_user exists, false otherwise
  def logged_in?
    !current_user.nil?
  end

  # a convenient method to set the session to given user's id with the `:user_id` key
  def sign_in(user)
    session[:user_id] = user.id
  end

  # clears the session by setting the value of `:user_id` key to `nil`
  def sign_out
    session[:user_id] = nil
  end

  def user_approved
    current_user.approval
  end

  def require_login
    redirect_to(root_path) unless !current_user.nil?
  end

  def require_admin
    redirect_to(root_path) unless current_user.super? || current_user.admin?
  end

  helper_method :logged_in?, :current_user

end
