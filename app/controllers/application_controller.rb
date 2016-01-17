class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :profile_exist?, if: :user_signed_in?

  private

  def profile_exist?
    profile = Profile.find_by(user_id: current_user)
    redirect_to new_profile_url, flash: { success: 'プロフィールを作成してください' } if profile.blank?
  end
end
