class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    issues = params[:issues]
    @user = current_user
    @post = Post.new(post_params)
    # @issue = Issues.all
    if @post.save
      @user.posts << @post

      issues.each do |i|
         @post.issues.push(Issue.find(i)) 
      end

        flash[:notice] = "Great Post!"
        redirect_to user_post_path(@user, @post)
    else
        flash[:alert] = "Seems there was a problem. Please try again."
        redirect_to new_user_post_path(@user)
    end
  end

  def edit
  end

  def index
    @user = current_user
    @posts = @user.posts.all
  end

  def show
    @post = Post.find_by_id params[:id]
  end

  def destroy
  end
end

private

def post_params
     params.require(:post).permit(:avatar, :title, :body)
end