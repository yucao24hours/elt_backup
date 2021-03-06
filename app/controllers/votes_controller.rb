class VotesController < ApplicationController
  def new
    @vote = Vote.new
    @vote_targets = VoteTarget.where(type: params[:vote_target])
    flash.notice = 'VoteTarget が登録されていません。管理画面から VoteTarget を登録してください' if @vote_targets.blank?
  end

  def create
    @vote = Vote.find_or_initialize_by(attendee_id: current_user.id, vote_target_id: vote_params[:vote_target_id])
    @vote.assign_attributes(vote_params)

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
    #XXX このアプリ、投票内容を編集 edit できない。
    redirect_to root_path, alert: 'ごめんなさい。編集できないんです。'
  end

  private

  def vote_params
    params.require(:vote).permit(:attendee_id, :comment, :vote_target_id)
  end

  def set_vote_targets
    @vote_targets = VoteTarget.where(type: params[:vote_target])
  end
end
