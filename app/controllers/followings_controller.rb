class FollowingsController < ApplicationController
  before_action :authenticate_user!

  def create
    @user = User.find(params[:user_id])
    following = current_user.followings.build(following_user: @user)
    @success = following.save
  end

end
