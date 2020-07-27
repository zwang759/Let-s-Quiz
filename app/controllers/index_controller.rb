class IndexController < ApplicationController
  def home
    @courses = Course.all
    @instructors = Instructor.all
    @subjects = Subject.all
  end

  def create
  end

  def search
    @courses = Course.all
    @subjects = Subject.all

  end

  def result
    @course_query = params[:course_name]
    @subject = params[:subject][:subject_id]

    if @subject.size.equal?(0)
      @courses = Course.where('lower(name) LIKE ?', "%#{@course_query.downcase}%")
    else
      @subject_name = Subject.find_by(id: @subject).name
      @courses = Subject.find(@subject).courses.where('lower(name) LIKE ?', "%#{@course_query.downcase}%")
    end
    @result_sum = @courses.size

    render 'show'
  end

  def show
    @course = Course.first
    respond_to do |format|
      format.js { render layout: false } # Add this line to you respond_to block
    end
  end

end
