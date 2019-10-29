class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :address])
  end

  def after_sign_in_path_for(resource)
    if resource.is_a?(User)
      '/profile'
    else
      super
    end
  end

  def after_sign_out_path_for(resource)
    if resource.is_a?(User)
      root_path
    else
      super
    end
  end
end