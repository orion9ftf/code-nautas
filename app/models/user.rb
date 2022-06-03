class User < ApplicationRecord
    has_many :user_course
    has_many :courses, through: :user_course

    validates :username, presence: true

    def self.add_course(course)
        course.courses.create(user_id: id)
    end

    def self.undo_course(course)
        Course.find_by(user_id: id, course_id: course.id).destroy
    end

    def self.add_courses_two(user_id, course_id)
        course = Course.find(course_id)

        if course && course.exist? > 0
            user_course.create(course_id: course.id, user_id: user)
        end
    end

    def self.count_courses_by_user
        course = Course.all

        if course == 'Javascript' && course.count >= 2
            course.undo_course
        elsif course == 'Docker' && course.count >= 2
            course.undo_course
        else 
            add_course
        end
    end

end
