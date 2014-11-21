class ResultsController < ApplicationController
  def index
    #NOTE: params[:target_type] は、Lt Sake Food いずれかの文字列
    vote_targets  = params[:target_type].classify.constantize.all
    @targets = vote_targets.sort {|p, n| n.votes.count <=> p.votes.count}
    @type    = params[:target_type]
  end

  def show
    @votes = Vote.where(vote_target_id: params[:id])
  end
end
