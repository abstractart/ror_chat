class CommentsController < ApplicationController
  before_action :authenticate_user!
  
  respond_to :html
  respond_to :js
  
  def index
    @comments = Comment.all.includes(:user)
    respond_with(@comments)
  end

  def new
    @comment = current_user.comments.new
    respond_with(@comment)
  end

  def create
    @comment = current_user.comments.create(comment_params)
    respond_with(@comment)
  end

  private 

  def comment_params
    params.require(:comment).permit(:text)
  end
end
