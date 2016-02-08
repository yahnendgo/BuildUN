class IssuesController < ApplicationController
  def new
    @issue = Issue.new
  end

  def create
    @issue = Issue.new(issue_params)
    if @issue.save
      flash[:notice] = "Thanks for your submission. We will review it and update the list appropriately."
      redirect_to @issue
    else
      flash[:alert] = "Uh oh! Please try again."
    end
  end

  def show
    @issue = Issue.find_by_id params[:id]
    @post = Post.new
    @medium = Medium.new
    @user = current_user
  end

  def index
    @issues = Issue.all.order name: :asc
  end

  def index_form
    @issues = Issue.all.order name: :asc
  end

  def edit
    @issue = Issue.find_by_id params[:id]
  end

  def update
  end

  def destroy
  end
end

private

  def issue_params
    params.require(:issue).permit(:name, :description, :avatar, :reasoning, user_ids: [])
  end 
