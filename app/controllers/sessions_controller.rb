class SessionsController < ApplicationController
  def new
  end

  def create
    auth                  = request.env['omniauth.auth']
    attendee              = Attendee.find_or_create_with_omniauth(auth)
    session[:attendee_id] = attendee.id
    redirect_to root_url, notice: 'Signed in!'
  end
  
  def destroy
    reset_session
    redirect_to_signin
  end
end
