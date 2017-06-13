class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  def after_sign_in_path_for(resource)
    for_team_games_path(resource.team)
  end

  def after_sign_up_path_for(resource_or_scope)
    new_profile_path
  end
end
