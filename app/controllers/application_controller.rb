class ApplicationController < ActionController::Base

    def current_courses
        if user_id
            course = Course.find_or_create_by(user_id: 'Uriel')
        end
    end
end
https://empieza.desafiolatam.com/cohorts/1072/sections/23825/activities/31278/items/176979

