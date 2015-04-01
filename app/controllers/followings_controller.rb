class FollowingsController < ApplicationController
  before_action :authenticate_user!

  def create
    @user = User.find(params[:id])
    following = current_user.followings.build(following_user: @user)
    @success = following.save
  end

  def destroy
    @user = User.find(params[:id])
    following = current_user.followings.where(following_user_id: @user.id).first
    @success = following.destroy
  end

end
