class ApplicationController < ActionController::Base
    layout 'application'
    protect_from_forgery with: :exception

    before_action :configure_permitted_parameters, if: :devise_controller?

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

    protected

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:full_name,:role, :phone])
    end
end
