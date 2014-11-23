class Attendee < ActiveRecord::Base
  class << self
    def create_with_omniauth(auth)
      create! do |attendee|
        attendee.nickname = auth['info']['nickname']
        attendee.uid      = auth['uid']
        attendee.provider = auth['provider']
      end
    end
  end
end
