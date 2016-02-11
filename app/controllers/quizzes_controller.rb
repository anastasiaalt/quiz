class QuizzesController < ApplicationController

  def index
    @quizzes = Quiz.all
  end

  def show
    @quiz = Quiz.find(params[:id])
    questions = Question.find_each(params[:quiz_id])
  end

  def edit
    @quiz = Quiz.find(params[:id])
  end

  def new
    @quiz = Quiz.new
  end

  def create
    @quiz = Quiz.create(quiz_params)
    redirect_to @quiz
  end

  def update
    @quiz = Quiz.find(params[:id])  
    @quiz.update(quiz_params)
    redirect_to @quiz
  end

  private

  def quiz_params
    params.require(:quiz).permit(:assigned, :instructor_id, :title)
  end

end
