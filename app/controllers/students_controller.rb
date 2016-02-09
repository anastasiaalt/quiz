class StudentsController < ApplicationController
  include SessionsHelper

  def new
    
  end

  private

  def student
    params.require(:student).permit()
  end
end
