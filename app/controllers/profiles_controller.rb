class ProfilesController < ApplicationController
  def edit
    @user = current_user
    @teams = Team.all.map { |team| [team.name, team.id] }
  end

  def update
 @games = Game.all
  end

  def index
    @games = Game.all
  end

end
