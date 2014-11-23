class Attendee < ActiveRecord::Base
  class << self
    def find_or_create_with_omniauth(auth)
      params = {
        nickname: auth['info']['nickname'],
        uid:      auth['uid'],
        provider: auth['provider']
      }
      attendee = Attendee.where(provider: params[:provider], uid: params[:uid]).first_or_initialize
      attendee.attributes = params
      attendee.save!
      attendee
    end
  end
end
