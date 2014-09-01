
class StaticPagesController < ApplicationController
  def home
    @posts = Post.order(updated_at: :desc).page(params[:page]).per(5)
    @galeries = Galery.includes(:images).all
  end
end
