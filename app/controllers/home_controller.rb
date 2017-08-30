class HomeController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @comments = Comment.all.by_date.page(params[:page])
  end
end
