class ResultsController < ApplicationController
  def index
    v = Vote.vote_to(params[:target_type])
    @votes = v.group_by {|vote| vote.vote_target_id}
  end

  def show
    @votes = Vote.where(vote_target_id: params[:id])
  end
end
