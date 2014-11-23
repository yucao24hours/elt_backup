class VoteTarget < ActiveRecord::Base
  validates :type,        presence: true
  validates :title,       presence: true
  validates :attendee_id, presence: true

  has_many :votes
  belongs_to :attendee
end
