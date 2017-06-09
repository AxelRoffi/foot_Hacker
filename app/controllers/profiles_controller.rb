class ProfilesController < ApplicationController
  def edit
    @profile = Profile.find(params[:id])
    @teams = Team.all.map { |team| [team.name, team.id] }
  end

  def update

    @user = User.all

    # redirect_to #show
  end

  def new
    @user = User.new
    user.save
  end

  def create
    @user = User.new(profiles_params)
  end

  def show
    @team = Team.find(params[:id])
    @user = User.new
  end

  private

  def profiles_params
    params.require(:profiles).permit(:email, :team)
  end

end
