class WelcomeController < ApplicationController

  def index
    if current_user
      @photos = Photo.where(user_id: current_user.followed_users).order('created_at DESC').limit(20)
    else
      @photos = Photo.order('created_at DESC').limit(20)
    end
  end

end
