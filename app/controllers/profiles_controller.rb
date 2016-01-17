class ProfilesController < ApplicationController
  before_action :authenticate_user!
  skip_before_action :profile_exist?, only: [:new, :create]

  def show
      @profile = Profile.find_by(user_id: current_user.id)
      @count_answer = Answer.where(user_id: current_user).count
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
      :special_erea,
      :avatar
    ).tap do |w|
      w[:sex] = w[:sex].to_i if w[:sex]
      w[:marry] = w[:marry].to_i if w[:marry]
    end
  end
end
