class Vote < ActiveRecord::Base
  belongs_to :target, class_name: 'VoteTarget', foreign_key: :vote_target_id

  validates :vote_target_id, presence: true
  validates :attendee_id,    presence: true
end
