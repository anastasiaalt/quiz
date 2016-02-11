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

    5.times do 
      question = @quiz.questions.build
      4.times do 
        question.options.build
      end
    end
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

  def destroy
    @quiz = Quiz.find(params[:id])
    @quiz.destroy
    redirect_to quizzes_url
  end

  private

  def quiz_params
    params.require(:quiz).permit(
      :assigned, :instructor_id, :title,
      :questions_attributes => [
        :ask, :explanation, 
        :options_attributes => [
          :name, :correct
        ]
      ]
    )
  end

end
