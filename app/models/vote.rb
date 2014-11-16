class Vote < ActiveRecord::Base
  has_one :vote_target
end
