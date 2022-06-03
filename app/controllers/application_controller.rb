class ApplicationController < ActionController::Base

    def current_courses
        if user_id
            course = Course.find_or_create_by(user_id: 'Uriel')
        end
    end
end

