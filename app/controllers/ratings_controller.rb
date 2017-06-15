class RatingsController < ApplicationController

def create
  @game = Game.find(params[:game_id])
  @rating = Rating.new(rating_params)
  @rating.game = @game
  @rating.user = current_user
  if @rating.save
    redirect_to game_path(@game)
  else
    flash[:notice] = "An error occured"
    redirect_to game_path(@game)
  end
end

  private


  def rating_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:rating).permit(:score, :player_id )
  end
end


