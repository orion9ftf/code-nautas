class UserCourse < ApplicationRecord
  belongs_to :user
  belongs_to :course

  def self.user_courses
    courses = User.last.courses
    course_query = "SELECT courses * FROM courses INNER JOIN user_courses ON courses.id = user_courses.course_id WHERE user_courses.user_id = user_id"
    query = (course = Course.find(2) == Course.find_by(title: 'JAVA'))
  end
end
