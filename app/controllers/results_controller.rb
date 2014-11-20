class ResultsController < ApplicationController
  def index
    #TODO あとでなおす
    #すべての vote インスタンスを、vote_target_id ごとにグルーピングして、[得票数, vote_targetインスタンス] の形を配列にして、target の個数分だけ要素をつくる。

    type = params[:target_type]
    @results = Vote.vote_to(type)
  end

  def show
    #TODO あとでなおす
    @votes = Vote.all
  end
end
