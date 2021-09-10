class ApplicationController < ActionController::Base
    before_action :authenticate_user!
    
    protect_from_forgery with: :exception, prepend: true
    before_action :configure_permitted_parameters, if: :devise_controller?

    protected
    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:nome, :email, :password, :password_confirmation, :cognome, :cellulare, :eta)}

        devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:nome, :cognome, :cellulare, :eta)}
    end

    rescue_from CanCan::AccessDenied do |exception|
        redirect_to root_path, :alert => exception.message
    end
    
end
