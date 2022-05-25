class ApplicationController < ActionController::Base
  
  rescue_from CanCan::AccessDenied do |exception|
    respond_to do |format|
      format.json { head :forbidden }
      format.html { redirect_to error_path, alert: exception.message }
    end
  end

  def after_sign_in_path_for(resource)
    if current_user
      pages_path
    else
      new_user_session_path
    end
  end
  
end
