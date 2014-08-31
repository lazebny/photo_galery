class GaleriesController < ApplicationController
  before_action :set_galery, only: [:show]

  # def index

  # end

  def show
    name = params[:id]
    @images =
      if name == 'all'
        Galery::Image.order(updated_at: :desc)
      else
        @galery.images
      end

    @images = @images.order(updated_at: :desc).page(params[:page]).per(10)
  end

  private

  def set_galery
    name = params[:id]
    @galery = 
      if name == 'all'
        Galery.new
      else
        Galery.where('LOWER(name) = ?', name).first
      end

  end
end
