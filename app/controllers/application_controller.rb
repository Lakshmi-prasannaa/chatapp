class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  #protect_from_forgery with: :exception
   helper_method :current_user, :user_signed_in?

   #layout 'app_lay'

  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def user_signed_in?
  	if session[:user_id]
      true
    else
      false
    end
  end

  def authenticate_user
    unless user_signed_in?
      redirect_to new_post_path
    end
  end
  
end
