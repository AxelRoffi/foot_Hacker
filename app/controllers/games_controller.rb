class GamesController < ApplicationController

  def index
    @games = Game.where(local_team: current_user.profile.team)
                  .or(Game.where(visitor_team: current_user.profile.team)).order("datetime DESC")
    @visitor = Team.all.sample
    @home = Team.all.sample
  end

  def show
    @game = Game.find(params[:id].to_i)

    @local_team_players = @game.appearances.select {|x| x.team_id == @game.local_team_id}
    @visitor_team_players = @game.appearances.select {|x| x.team_id == @game.visitor_team_id}
    @rating = Rating.new
  end

   def team_id
     @games = Game.where(team_id: current_user.team) #(profile(team_id))
   end


end
