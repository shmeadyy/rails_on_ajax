class MenusController < ApplicationController
  def index
    @menus = Menu.all
    @menu = Menu.new
  end

  def show
    @menu = Menu.find params[:id]
  end

  def create
    @menu = Menu.new params[:menu]
    if @menu.save
      redirect_to root_path
    else
      @menus = Menu.all
      render :index
    end
  end
end
