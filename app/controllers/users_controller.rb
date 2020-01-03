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
        @place = Place.new
    end
    def driver_home
        @trip = Trip.new
        @trips = Trip.where(driver_id: current_user.id)

    end
    def passenger_home
        @pickup = Pickup.new
        @pickups = Pickup.where(passenger_id: current_user.id)

    end

end
