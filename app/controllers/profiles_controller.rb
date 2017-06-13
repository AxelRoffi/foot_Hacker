class ProfilesController < ApplicationController
  before_action :teams_collection, only: [:edit, :new]
  before_action :find_profiles, only: [:edit, :update, :show]

  def show
  end

  def new
    @profile = Profile.new

  end

  def create
    @profile = Profile.new(profiles_params)
    @profile.user = current_user
    @profile.save
    redirect_to games_path
  end

  def edit
    # @profile = Profile.find(params[:id])

  end

  def update
    @profile.update(profiles_params)
    flash[:notice] = "You're so Smart. You Updated your profile"
    redirect_to games_path
  end

  private

  def profiles_params
    params.require(:profile).permit(:team_id, :last_name, :first_name)
  end

  def find_profiles
    @profile = current_user.profile
  end

  def teams_collection
    @teams = Team.all.map { |team| [team.name, team.id] }
  end
end
