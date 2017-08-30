class CommentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_comment, only: [:destroy, :edit, :update]
  respond_to :html
  respond_to :js
  
  def index
    @comments = Comment.all.order(created_at: :desc).page(params[:page]).includes(:user)
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

  def edit
    respond_with(@comment)
  end

  def update
    @comment.update(comment_params)
    respond_with(@comment)
  end

  def destroy
    @comment.destroy
    respond_with(@comment)
  end

  private

  def set_comment
    @comment = current_user.comments.find(params[:id])
  end

  def comment_params
    params.require(:comment).permit(:text)
  end
end
