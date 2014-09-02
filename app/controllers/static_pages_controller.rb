
class StaticPagesController < ApplicationController
  def home
    @posts = Post.order(updated_at: :desc).page(params[:page]).per(3)
    @menu_posts = @posts.first(3)
    @galeries = Galery.includes(:images).all
    @note = Note.last
  end
end
