class ProfilesController < ApplicationController
  before_action :authenticate_user!

  def show
  end

  def new
    @profile = Profile.new
  end

  def create
    @profile = current_user.build_profile(profile_params)
    if @profile.save
      redirect_to profile_path, flash: { success: '保存しました' }
    else
      render 'new'
    end
  end

  private

  def profile_params
    params.require(:profile).permit(
      :name,
      :birthday,
      :sex,
      :town,
      :marry,
      :biography,
      :homepage,
      :special_erea
    ).tap do |w|
      w[:sex] = w[:sex].to_i if w[:sex]
      w[:marry] = w[:marry].to_i if w[:marry]
    end
  end
end
