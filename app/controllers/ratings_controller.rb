class RatingsController < ApplicationController

def new
@rating = Rating.new
end


def create
  @rating = Rating.new(rating_params)
    @rating.save
end

  private

  def rating_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:rating).permit(:score, :game_id, :team_id, :user_id )
  end



