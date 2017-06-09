class ProfilesController < ApplicationController
  before_action :teams_collection, only: [:new, :create]

  def show
    @user = Profile.find(params[:id])
  end

  def new
    @profile = Profile.new
  end

  def create
    @profile = Profile.new(profiles_params)
    @profile.user = current_user
    @profile.first_name = current_user.first_name
    @profile.last_name = current_user.last_name
    @profile.save
  end

  def edit
    @profile = User.find(params[:id])
  end

  def update
  end

  private

  def profiles_params
    params.require(:profiles).permit(:team)
  end

  def teams_collection
    @teams = Team.all.map { |team| [team.name, team.id] }
  end
end
