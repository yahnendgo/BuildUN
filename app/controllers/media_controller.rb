class MediaController < ApplicationController
  def new
    @medium = Medium.new
  end

  def create
    issues = params[:issues]
    @user = current_user
    @medium = Medium.new(medium_params)
    # @issue = Issues.all
    if @medium.save
      @user.media << @medium

      issues.each do |i|
         @medium.issues.push(Issue.find(i)) 
      end

        flash[:notice] = "Great Post!"
        redirect_to user_medium_path(@user, @medium)
    else
        flash[:alert] = "Seems there was a problem. Please try again."
        redirect_to new_user_medium_path(@user)
    end
  end

  def edit
  end

  def index
    @user = current_user
    @media = @user.media.order id: :desc
  end

  def show
    @medium = Medium.find_by_id params[:id]
    @comment = Comment.new
  end

  def destroy
  end
end

private

def medium_params
     params.require(:medium).permit(:media, :mediatype, :name, :author, :description)
end