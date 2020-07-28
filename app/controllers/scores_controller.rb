class ScoresController < ApplicationController

  # GET /scores
  # GET /scores.json
  def index
    @scores = User.order("score DESC")
  end

end
