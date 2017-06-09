class GamesController < ApplicationController
  def index
     @games = Game.all
  end

  def show
    # @game = Game.find(params[:id])
    @visitor = Team.all.sample
    @home = Team.all.sample
  end
end
