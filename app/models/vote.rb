class Vote < ActiveRecord::Base
  belongs_to :target, class_name: 'VoteTarget', foreign_key: :vote_target_id
end
