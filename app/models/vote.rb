class Vote < ActiveRecord::Base
  belongs_to :target, class_name: 'VoteTarget'
end
