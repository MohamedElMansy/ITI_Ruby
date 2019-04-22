class ApplicationController < ActionController::Base
    rescue_from CanCan::AccessDenied do |exception|
        redirect_to new_article_comment_path , :alert => exception.message
    end
    def current_ability
        @current_ability ||= Ability.new(current_model)
      end
        before_action :configure_permitted_parameters, if: :devise_controller?
        protected
      
        def configure_permitted_parameters
          devise_parameter_sanitizer.permit(:sign_up, keys: [:username ,:email ,:password])
        end

end
