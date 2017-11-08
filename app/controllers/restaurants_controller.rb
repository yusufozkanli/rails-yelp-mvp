class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def create
    @restaurant = Restaurant.create(restaurant_param)
      if @restaurant.save
        redirect_to restaurant_path(@restaurant)
      else
        render 'new'
      end
  end

private

  def restaurant_param
    params.require(:restaurant).permit(:name, :address, :category, :phone_number)
  end

end
