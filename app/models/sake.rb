class Sake < VoteTarget
  rails_admin do
    edit do
      field :title
      field :type
      field :nickname
    end
  end
end
