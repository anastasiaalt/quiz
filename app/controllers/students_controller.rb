class StudentsController < ApplicationController
  def new
    @student = Student.new
    @cohorts = Cohort.all
  end

  def create
    @student = Student.new(student_params)

    if @student.save
      session[:student_id] = @student.id
      redirect_to root_path
    else
      render :new
    end
  end

  def profile
    authenticate!
    @student = current_student
    @expired = Quiz.where("assigned < ? ", Date.today)
  end

  private

  def student_params
    params.require(:student).permit(:first_name, :last_name, :username, :password, :cohort_id)
  end

end
