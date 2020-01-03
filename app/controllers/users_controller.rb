class UsersController < ApplicationController

    def index 
        if current_user
            if current_user.role == "driver" 
                redirect_to drive_path
            elsif current_user.role == "passenger"
                redirect_to passenger_path
            elsif current_user.role == "admin" 
                redirect_to admin_path
            end
        else
            redirect_to new_user_session_path
        end
    end

    def admin_home
    end
    def driver_home
    end
    def passenger_home
    end

end
