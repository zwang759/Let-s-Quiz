class IndexController < ApplicationController
  def home
    @questions = Question.all
    @scores = Score.all
  end

  def question
    @question = Question.all.sample()
    @score = User.find(current_user.id).score
  end

  def answer
    user = User.find(current_user.id)
    question_id = params[:question_id]
    answer = params[:answer]
    question = Question.find(question_id)

    @question = question
    @result = false
    if @question.answer == answer
      @result = true
      user.increment!(:score, by=4)
    else
      user.increment!(:score, by=-1)
    end
    @score = user.score
  end

  def show
    @questions = Question.first
    respond_to do |format|
      format.js { render layout: false } # Add this line to you respond_to block
    end
  end
end
