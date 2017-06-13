class GamesController < ApplicationController
  def index
     @games = Game.all
  end

  def show
    # @game = Game.find(params[:id])
    @visitor = Team.all.sample
    @home = Team.all.sample
  end

  def for_team
    @games = Game.where(local_team: current_user.team)
                 .or(Game.where(visitor_team: current_user.team))
  end
end
