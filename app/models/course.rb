class Course < ApplicationRecord
    has_many :user_course
    has_many :users, through: :user_course
    
    validates :title, presence: true, length: { minimum: 1, maximum: 300 }

    def self.feed(user)
        num_courses = '(SELECT COUNT(*) FROM courses WHERE courses_id = course.id) AS num_courses'
    end

    # if user == 'Uriel'
    #     user.courses.includes(user: user.id).select("courses.*, #{user}, #{num_courses}")
    # else
    #     'Uriel'.courses_id
    # end
end
