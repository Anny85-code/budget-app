class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  rescue_from CanCan::AccessDenied do |exception|
    # respond_to do |format|
    #   format.json { head :forbidden }
    #   format.html { redirect_to error_path, alert: exception.message }
    # end
    redirect_to main_app.root_url, alert: exception.message
  end

  # def after_sign_in_path_for(resource)
  #   if current_user
  #     pages_path
  #   else
  #     new_user_session_path
  #   end
  # end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :email, :password, :password_confirmation) }
    devise_parameter_sanitizer.permit(:account_update) do |u|
      u.permit(:name, :email, :password, :password_confirmation, :current_password)
    end
  end
  
end
