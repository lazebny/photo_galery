module Api
  class Galleries::ImagesController < ApplicationController
    before_action :set_gallery

    def show
      @image = ::Gallery::Image.find_by_id params[:id]
      # if @gallery
      # @image
      # = @gallery.images.find_by_id params[:id]
      #
      # end
    end

    private

    def set_gallery
      # @gallery = ::Gallery.find_by_id params[:gallery_id]
    end
  end
end
