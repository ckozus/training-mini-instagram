class FollowingsController < ApplicationController
  before_action :authenticate_user!

  def create
    following_user = User.find(params[:user_id])
    following = current_user.followings.build(following_user: following_user)
    if following.save
      redirect_to following_user
    else
      redirect_to user, alert: "Error al seguir!"
    end
  end

end
