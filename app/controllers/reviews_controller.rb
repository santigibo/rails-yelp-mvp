class ReviewsController < ApplicationController
  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    r = Review.new(params_secure)
    resto = Restaurant.find(params[:restaurant_id])
    r.restaurant = resto
    r.save

    redirect_to restaurant_path(resto)
  end

  private

  def params_secure
    params.require(:review).permit(:content, :rating)
  end
end
