class RestaurantsController < ApplicationController
  # before_action :set_restaurant, only: [:show]

  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(strong_params)
    @restaurant.category = params[:f][:category]
    @restaurant.save
    redirect_to restaurants_path(@restaurant)
  end

  private

  # def set_restaurant
  #   @restaurant = Restaurant.find(params[:id])
  # end

  def strong_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :reviews)
  end
end
