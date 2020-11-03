class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception, prepend: true
    before_action :configure_permitted_params, if: :devise_controller?

    protected

    def configure_permitted_params
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:username, :first_name, :last_name, :DOB, :email, :password, :password_confirmation)}
    end

end
