class GamesController < ApplicationController
  def index
     @games = Game.all
  end

  def show
    # @game = Game.find(params[:id])
    @visitor = Team.all.sample
    @home = Team.all.sample
  end

  def team_id
    @games = Game.where(team_id: current_user.team) #(profile(team_id))
  end


end
