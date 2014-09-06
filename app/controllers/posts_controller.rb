class PostsController < ApplicationController
  before_action :set_post, only: [:show]
  def show
    @posts = Post.order(updated_at: :desc).page(params[:page]).per(3)
    @menu_posts = Post.order(updated_at: :desc).first(3)
    @quote = Quote.day_qoute
    @galleries = Gallery.includes(:images).all
    @note = Note.last
    @logo = PortfolioLogo.all.sample
  end

  private

  def set_post
    @post = Post.find_by_id(params[:id])
  end
end
