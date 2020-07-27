class IndexController < ApplicationController
  def home
    @questions = Question.all
    @scores = Score.all
  end

  def show
    @questions = Question.first
    respond_to do |format|
      format.js { render layout: false } # Add this line to you respond_to block
    end
  end

end
