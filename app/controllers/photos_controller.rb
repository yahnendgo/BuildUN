class PhotosController < ApplicationController
  def new
    @user = current_user
    @photo = Photo.new
  end

  def create
    @user = current_user
    @photo = Photo.new(photo_params)
    if @photo.save
      @user.photos << @photo
        flash[:notice] = "Check out your photo!"
        redirect_to user_photo_path(@user, @photo)
    else
        flash[:alert] = "Seems there was a problem. Please try again."
        redirect_to new_user_profile_path(@user)
    end
  end

  def show
    @user = User.find_by_id params[:id]
    @photo = Photo.find_by_id params[:id]
    @comment = Comment.new
  end

  def index
    @user = current_user
    @photos = Photo.order id: :desc
  end

  def edit
    @user = current_user
    @photo = Photo.find_by_id params[:id]    
  end

  def destroy
    @user = current_user
    @photo = Photo.find_by_id params[:id]
  end
end

private
def photo_params
   params.require(:photo).permit(:avatar, :description, :position, :user_id)
end