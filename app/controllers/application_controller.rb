class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :authenticate_user!
  
  layout :layout_by_resource

  
  def after_sign_in_path_for(resource)
    posts_path
  end
  def layout_by_resource
    if devise_controller?
      "login"
    else
      "application"
    end
  end
end
