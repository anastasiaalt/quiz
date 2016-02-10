class InstructorsController < ApplicationController
  def new
    @instructor = Instructor.new
  end

  def create
    @instructor = Instructor.new(instructor_params)

    if @instructor.save
      session[:instructor_id] = @instructor.id
      redirect_to root_path
    else
      render :new
    end
  end

  def profile
    authenticate!
    @instructor = current_instructor
  end

  private

  def instructor_params
    params.require(:instructor).permit(:first_name, :last_name, :username, :password)
  end

end
