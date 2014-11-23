class VoteTargetsController < ApplicationController
  before_action :redirect_to_signin, unless: :signed_in?

  def index
  end
end
