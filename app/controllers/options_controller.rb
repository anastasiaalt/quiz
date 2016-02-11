class OptionsController < ApplicationController

  def index
    @options = Option.all
  end

  def show
    @option = Option.find(params[:id])
    @questions = Question.all
  end

  def new
    @option = Option.new
  end

  def edit
    @option = Option.find(params[:id])
  end

  def create
    @option = Option.create(option_params)
    redirect_to @option
  end

  def update
    @option = Option.find(params[:id])  
    @option.update(option_params)
    redirect_to @option
  end

  def destroy
    @option = Option.find(params[:id])
    @option.destroy
    redirect_to options_url
  end

  private

  def option_params
    params.require(:option).permit(:name, :correct, :question_id)
  end

end
