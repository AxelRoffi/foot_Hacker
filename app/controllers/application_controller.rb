class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  def after_sign_in_path_for(resource_or_scope)
    edit_profiles_path(id: resource_or_scope)
  end
end
