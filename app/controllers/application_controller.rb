class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user
  # this makes it possible access the current user method inside of views
  # you can upgrade any method to a view method in this way

  def current_instructor
    if session[:instructor_id]
      @current_student = Instructor.find(session[:instructor_id])
    end
  end

  def current_student
    if session[:student_id]
      @current_student = Student.find(session[:student_id])
    end
  end

  def current_user
    @current_user = current_instructor || current_student
  end


  def authenticate!
    redirect_to root_path unless current_user
  end
end
