class User < ApplicationRecord
    has_many :user_course
    has_many :courses, through: :user_course

    validates :username, presence: true

    def add_course(course)
        course.courses.create(user_id: id)
    end

    def undo_course(course)
        Course.find_by(user_id: id, course_id: course.id).destroy
    end

    def add_courses_two(user_id, course_id)
        course = Course.find(course_id)

        if course && course.exist? > 0
            user_course.create(course_id: course.id, user_id: user)
        end
    end

end
