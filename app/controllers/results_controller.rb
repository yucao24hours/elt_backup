class ResultsController < ApplicationController
  def index
    #NOTE: params[:target_type] は、Lt Sake Food いずれかの文字列
    vote_targets  = params[:target_type].classify.constantize.all
    @targets = vote_targets.sort {|p, n| n.votes.count <=> p.votes.count}
    @type    = params[:target_type]
  end

  def show
    @target = VoteTarget.find(params[:id])

    votes = VoteTarget.find(params[:id]).votes
    @comments = votes.all.map {|vote| vote.comment.empty? ? nil : vote.comment}
  end
end
