class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :header_view

  private

  def header_view
    @header_top_menu_view = View::Header::TopMenu.new params
  end
end
