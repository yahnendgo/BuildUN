class ProfilesController < ApplicationController
  def new
    @user = current_user
    @profile = Profile.new
  end

  def create
    @user = current_user
    @profile = Profile.new(profile_params)
    if @profile.save
      @user.profile = @profile
        flash[:notice] = "Your profile has been saved!"
        redirect_to user_profile_path(@user)
    else
        flash[:alert] = "Seems there was a problem. Please try again."
        redirect_to new_user_profile_path(@user)
    end
  end

  def edit
    @user = current_user
    @profile = Profile.find_by_id params[:id]
  end

  def update
    @user = current_user
   if current_user.profile.update(profile_params)
      redirect_to user_profile_path(@user)
    end
  end

  def show
    @user = User.find_by_id params[:user_id]
    @users = User.all
    @profile = @user.profile
    @photos = @user.photos.order id: :desc
    @posts = @user.posts.order id: :desc
    @media = @user.media.order id: :desc
  end

  def destroy
  end

  private

  def profile_params
    params.require(:profile).permit(:avatar, :username, :fname, :lname, :street_address, :city, :state, :zip, :cell, :country, :email, :fbhandle, :twhandle, :lihandle, :insthandle, :hractive, :focuses, :title, :profession, :consultant_skills, :volunteer_skills)
    
  end
end
