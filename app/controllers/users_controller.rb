class UsersController < ApplicationController
  skip_before_action :require_login, only: [:new, :create]

  def index
    @user = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      # Handle a successful save.
      log_in @user
      flash[:success] = 'Welcome to Question Answer Game'
      redirect_to @user
    else
      render 'new'
    end
  end

  def drop
    Question.where(user_id: current_user.id).first.destroy
    flash[:success] = 'Question successfully deleted!'

    redirect_to created_question_path
  end

  def created_question
    @user = current_user
    @questions = current_user.questions.all
  end


  private

  def user_params
    params.require(:user).permit(:name, :email, :password,
                                 :password_confirmation)
  end

end
