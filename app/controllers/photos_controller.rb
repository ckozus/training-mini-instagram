class PhotosController < ApplicationController
  before_action :authenticate_user!

  def index
    @photos = Photo.includes(:user).where("users.email" => params[:q]).all
  end

  def my
    @photos = current_user.photos
  end

  def new
    @photo = current_user.photos.build
  end

  def create
    @photo = current_user.photos.build(photo_params)
    if @photo.save
      redirect_to root_path
    else
      render :new
    end
  end

protected

  def photo_params
    params.require(:photo).permit(:asset, :title, :description)
  end

end
