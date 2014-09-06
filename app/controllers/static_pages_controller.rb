
class StaticPagesController < ApplicationController
  def home
    @posts = Post.order(updated_at: :desc).page(params[:page]).per(3)
    @menu_posts = Post.order(updated_at: :desc).first(3)
    @quote = Quote.day_qoute
    @galleries = Gallery.includes(:images).all
    @note = Note.last
    @logo = PortfolioLogo.all.sample
  end
end
