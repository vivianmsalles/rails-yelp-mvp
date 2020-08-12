class ReviewsController < ApplicationController
  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @review = Review.new(strong_params)
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review.rating = params[:f][:rating]
    @review.restaurant = @restaurant
    @review.save

    redirect_to restaurants_path(@restaurant)
  end

  private

  def strong_params
    params.require(:review).permit(:content)
  end
end
