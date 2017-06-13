class GamesController < ApplicationController
  def index
    @games = Game.where(local_team: current_user.profile.team)
                  .or(Game.where(visitor_team: current_user.profile.team))
    @visitor = Team.all.sample
    @home = Team.all.sample
  end

  def show
    @game = Game.find(params[:id])
  end

  def show
    @game = Game.find(params[:id])
  end

   def team_id
     @games = Game.where(team_id: current_user.team) #(profile(team_id))
   end

end
