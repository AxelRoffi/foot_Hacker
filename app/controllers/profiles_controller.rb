class ProfilesController < ApplicationController
  def edit
    @user = current_user
    @teams = Team.all.map { |team| [team.name, team.id] }
  end

  def update
  end
end
