class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :picture])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name])
  end


  def after_sign_in_path_for(resource)
    if request.referer.include?("id")
      id = request.referer.match(/id=(\d*)/)[1].to_i
      travel_path(id)
    else
      dashboard_path(current_user) # your path
    end
    # redirect_to request.referer
  end

end
