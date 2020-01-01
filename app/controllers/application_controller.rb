class ApplicationController < ActionController::Base
    layout 'application'
    def after_sign_in_path_for(resource)
        if current_user.role == "driver" 
            driver_path
        elsif current_user.role == "passenger"
           passenger_path
        elsif current_user.role == "admin" 
           admin_path
        else
           new_user_session_path
        end
    end
    def after_sign_out_path_for(resource)
        new_user_session_path
    end
end
