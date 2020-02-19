class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    r = Restaurant.create(params_secure)
    redirect_to restaurant_path(r.id)
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  private

  def params_secure
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end
