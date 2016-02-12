class SubmissionsController < ApplicationController
  def new
    @submission = Submission.new
    @quizzes = Quiz.all
    @questions = Question.all
    @options = Option.all
  end

  def show
    @submission = Submission.find(params[:id])
  end

  def edit
    @submission = Submission.find(params[:id])
  end

  def new
    @submission = Submission.new
  end

  def update
    @submission = Submission.find(params[:id])  
    @submission.update(submission_params)
    redirect_to @submission
  end

  def create
    @submission = Submission.create(submission_params)
    redirect_to @submission
  end

  def destroy
    @submission = Submission.find(params[:id]) 
    @submission.destroy
    redirect_to submissions_url
  end

  private

  def submission_params
    params.require(:submission).permit(
      :student_id, :option_id,
      :options_attributes => [
        :name, :question_id, 
        :questions_attributes => [
          :ask, :quiz_id,
            :quizzes_attributes => [
              :title
          ]
        ]
      ]
    )
  end





end
