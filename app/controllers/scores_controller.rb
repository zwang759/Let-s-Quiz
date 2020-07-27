class ScoresController < ApplicationController

  # GET /scores
  # GET /scores.json
  def index
    @scores = Score.order("value DESC")
  end

end
