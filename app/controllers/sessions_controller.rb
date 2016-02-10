class SessionsController < ApplicationController

  def create
    student = Student.find_by(username: params[:username])
    if student && student.authenticate(params[:password])
      session[:student_id] = student.id
      redirect_to student_profile_path
    else
      redirect_to root_path
    end
  end

  def destroy
    session[:student_id] = nil
    redirect_to root_path
  end

end
