class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user

  private

  def current_user
    @current_user ||= Attendee.find(session[:attendee_id]) if session[:attendee_id]
  end
end
