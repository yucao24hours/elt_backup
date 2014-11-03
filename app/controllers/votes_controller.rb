class VotesController < ApplicationController
  def new
    @vote = Vote.new
  end

  def create
    @vote = Vote.new(vote_params)
    if @vote.save
      redirect_to @vote
    else
      set_targets
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

  private

  def vote_params
    params.require(:vote).permit(:target_type, :attendee_id, :comment)
  end

  def set_targets
    @targets = Target.find_by(target_type: params[:target_type])
  end
end
