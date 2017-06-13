class GamesController < ApplicationController
  def index
    @games = Game.all
    @visitor = Team.all.sample
    @home = Team.all.sample
  end

  def show
    @game = Game.find(params[:id])
  end



  def for_team
    @games = Game.where(local_team: current_user.profile.team)
                  .or(Game.where(visitor_team: current_user.profile.team))
  end

   def team_id
     @games = Game.where(team_id: current_user.team) #(profile(team_id))
   end

end
