class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user

  private

  def current_user
    @current_user ||= Attendee.find(session[:attendee_id]) if session[:attendee_id]
  end

  def signed_in?
    !!current_user
  end

  def redirect_to_signin
    redirect_to signin_path
  end
end
