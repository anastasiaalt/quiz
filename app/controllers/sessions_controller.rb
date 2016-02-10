class SessionsController < ApplicationController

  def create
    student = Student.find_by(username: params[:username])
    instructor = Instructor.find_by(username: params[:username])
    if instructor && instructor.authenticate(params[:password])
      session[:instructor_id] = instructor.id
      redirect_to instructor_profile_path
    elsif student && student.authenticate(params[:password])
      session[:student_id] = student.id
      redirect_to student_profile_path
    end
  end

  def destroy
    if session[:instructor_id] 
      session[:instructor_id] = nil
      redirect_to root_path
    elsif session[:student_id] 
      session[:student_id] = nil
      redirect_to root_path
    end
  end

end
