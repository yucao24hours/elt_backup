class VoteTarget < ActiveRecord::Base
  validates :type,  presence: true
  validates :title, presence: true

  has_many :votes
end
