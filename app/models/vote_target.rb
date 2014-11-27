class VoteTarget < ActiveRecord::Base
  validates :type,        presence: true
  validates :title,       presence: true
  validates :attendee_id, presence: true

  has_many :votes
  belongs_to :attendee

  rails_admin do
    edit do
      #XXX ほんとは管理画面の対象から vote_target をはずして、STI の子モデル側からデータ投入するようにしたい。
      field :title
      field :type
    end
  end
end
