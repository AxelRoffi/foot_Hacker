class ProfilesController < ApplicationController
  def edit
    @user = current_user
    @teams = Team.all.map { |team| [team.name, team.id] }
  end

  def update
    @games = Game.all
    # redirect_to #show
  end

  def index
    @games = Game.all
  end

  private

  def profiles_params

  end

end
