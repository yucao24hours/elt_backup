class ResultsController < ApplicationController
  def index
    #TODO あとでなおす
    @results = Vote.all
  end

  def show
    #TODO あとでなおす
    @votes = Vote.all
  end
end
