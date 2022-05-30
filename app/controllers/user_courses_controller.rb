class UserCoursesController < ApplicationController
  
  def add_courses
    course = Course.find(params[:course_id])
    User.last.add_course(course)
    redirect_to(redirect_to root_path)
  end

  def destroy_courses
    course = Course.find(params[:course_id])
    user_course = UserCourse.find(params[:id])
    user_course.undo_course(course)
    redirect_to(redirect_to root_path)
  end

end
