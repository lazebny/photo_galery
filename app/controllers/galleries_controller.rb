class GalleriesController < ApplicationController
  before_action :set_gallery, only: [:show]

  # def index

  # end

  def show
    name = params[:id]
    @images =
      if name == 'all'
        Gallery::Image.order(updated_at: :desc)
      else
        @gallery.images
      end
    @images = @images.order(updated_at: :desc).page(params[:page]).per(50)
    @galleries = Gallery.all
    @show_gallery = true
  end

  private

  def set_gallery
    name = params[:id]
    @gallery =
      if name == 'all'
        Gallery.new
      else
        Gallery.where('LOWER(name) = ?', name).first
      end

  end
end
