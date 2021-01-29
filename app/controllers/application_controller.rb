class ApplicationController < ActionController::Base  

  helper_method :user_signed_in?, :current_user

  def user_signed_in?
    !!session[:user_id]
  end

  def redirect_if_not_logged_in
    redirect_to '/login' if !user_signed_in?
  end

  def redirect_if_logged_in
    redirect_to user_path(current_user) if user_signed_in?
  end

  def current_user
    User.find_by_id(session[:user_id]) if user_signed_in?
  end


end
