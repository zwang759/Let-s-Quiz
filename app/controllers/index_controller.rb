class IndexController < ApplicationController
  def home
    @questions = Question.all
    @scoreboard = Scoreboard.all
  end

  def create
  end

  def show
    @questions = Question.first
    respond_to do |format|
      format.js { render layout: false } # Add this line to you respond_to block
    end
  end

end
