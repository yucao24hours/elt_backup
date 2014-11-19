class VotesController < ApplicationController
  def new
    @vote = Vote.new
    @vote_targets = VoteTarget.where(type: params[:vote_target])
  end

  def create
    @vote = Vote.new(vote_params)
    if @vote.save
      redirect_to @vote
    else
      set_vote_targets
      render :new
    end
  end

  def show
    @vote = Vote.find(params[:id])
  end

  def edit
  end

  def update
  end

  def result
  end

  private

  def vote_params
    params.require(:vote).permit(:attendee_id, :comment, :vote_target_id)
  end

  def set_vote_targets
    @vote_targets = VoteTarget.where(type: params[:vote_target])
  end
end
