class ProfilesController < ApplicationController
  before_action :teams_collection, only: [:new, :create]
  before_action :find_profiles, only: [:edit, :update, :show]

  def show
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

  end

  def update
    @profile.update(profiles_params)
    flash[:notice] = "You're so Smart. You Updated your profile"
    redirect_to profile_path(@profile)
  end

  private

  def profiles_params
    params.require(:profiles).permit(:team, :last_name, :first_name)
  end

  def find_profiles
    @profile = current_user.profile
  end

  def teams_collection
    @teams = Team.all.map { |team| [team.name, team.id] }
  end

end
