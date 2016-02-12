class SubmissionsController < ApplicationController
  def new
    @submission = Submission.new

    @student = current_user
    @question = Quiz.includes(questions: { options: :submissions})
      .where(:assigned => Date.today)
      .all.map(&:questions).flatten
      .select do |question|
        question.submissions.none? {|s| s.student_id == @student.id}
      end.first
    redirect_to student_profile_path if @question.nil?
  end

  def show
    @student = current_user
    @submission = Submission.find(params[:id])
  end

  def edit
    @student = current_user
    @submission = Submission.find(params[:id])
  end

  def update
    @student = current_user
    @submission = Submission.find(params[:id])  
    @submission.update(submission_params)
    redirect_to @submission
  end

  def create
    @student = current_user
    @submission = @student.submissions.create(submission_params)
    redirect_to new_submission_url
  end

  def destroy
    @submission = Submission.find(params[:id]) 
    @submission.destroy
    redirect_to submissions_url
  end

  private

  def submission_params
    params.require(:submission).permit(:option_id)
  end





end
