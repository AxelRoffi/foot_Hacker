class ProfilesController < ApplicationController
  before_action :teams_collection, only: [:edit]
  before_action :find_profiles, only: [:edit, :update, :show]

  def show
  end

  def new
    @profile = Profile.new

  end

  def create
    @profile = Profile.new(profiles_params)
    # @profile.user = current_user
    # # @profile.first_name = current_user.first_name
    # # @profile.last_name = current_user.last_name
    # @profile.team = current_user.team
    # @profile.save
  end

  def edit
    # @profile = Profile.find(params[:id])

  end

  def update
    @profile.update(profiles_params)
    flash[:notice] = "You're so Smart. You Updated your profile"
    redirect_to for_team_games_path
    # profile_path(@profile)
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
