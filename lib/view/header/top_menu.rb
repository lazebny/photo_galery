class View::Header::TopMenu
  def initialize(params)
    @params = params
  end

  def active_class(key)
    'header-top-menu-active' if @params[:controller] == key
  end
end
