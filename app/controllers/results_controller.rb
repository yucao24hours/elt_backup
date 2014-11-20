class ResultsController < ApplicationController
  def index
    targets  = params[:target_type].classify.constantize.all
    @targets = targets.sort {|p, n| n.votes.count <=> p.votes.count}
    @type    = params[:target_type]
  end

  def show
    @votes = Vote.where(vote_target_id: params[:id])
  end
end
