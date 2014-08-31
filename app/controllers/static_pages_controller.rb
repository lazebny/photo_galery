
class StaticPagesController < ApplicationController
  def home
    @galeries = Galery.includes(:images).all
  end
end
