class QuestionsController < ApplicationController

  def index
    @questions = Question.all
  end

  def show
    @question = Question.find(params[:id])
  end

  def edit
    @question = Question.find(params[:id])
  end

  def new
    @question = Question.new
  end

  def update
    @question = Question.find(params[:id])  
    @question.update(question_params)
    redirect_to @question
  end

  def create
    @question = Question.create(question_params)
    redirect_to @question
  end

  def destroy
    @question = Question.find(params[:id]) 
    @question.destroy
    redirect_to questions_url
  end

  private

  def question_params
    params.require(:question).permit(:ask, :explanation, :quiz_id)
  end

end
