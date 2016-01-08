class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new
    if @user.save
      flash[:notice] = "You're In! Click Enter."
    else
      flash[:alert] = "Uh oh! Please try again."
    end
  end

  def delete

  end

  def edit
    @user = User.find_by_id params[:id]
    @profile = Profile.find_by_id params[:id]
  end

  def index
    @user = User.all
  end

  def show
    @user = User.find_by_id params[:id]
    @post = Post.find_by_id params[:id]
    @profile = Profile.find_by_id params[:id]
    @issue = Issues.all
  end

  def destroy
  end

  def add_issues
    current_user.issue_ids = params[:issue_ids]
    flash[:notice] = "Now you got issues!"
    redirect_to user_profile_path current_user
  end
end
