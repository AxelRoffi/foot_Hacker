class GamesController < ApplicationController
  def index
     @game = Game.all
  end

  def show
    # @game = Game.find(params[:id])
    @visitor = Team.all.sample
    @home = Team.all.sample
  end
end
