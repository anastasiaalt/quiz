class QuizzesController < ApplicationController

  def index
    @quizzes = Quiz.all
  end

  def show
    @quiz = Quiz.find(params[:id])
  end

  def new
    @quiz = Quiz.new
  end

  def create
    @quiz = Quiz.create(quiz_params)
    redirect_to @quiz
  end

  private

  def quiz_params
    params.require(:quiz).permit(:assigned, :instructor_id)
  end

end
