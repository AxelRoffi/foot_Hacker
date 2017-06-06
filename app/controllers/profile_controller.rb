class ProfileController < ApplicationController
  def edit
    @profile = profile.find(params[:id])
    redirect_to profile_path(@profile)
  end

  def update
  end
end
