class ReviewsController < ApplicationController
  before_action :set_review, only: [:show]

  def show
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    # raise
    # we need `restaurant_id` to asssociate review with corresponding restaurant
    @review.restaurant = Restaurant.find(params[:restaurant_id])
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review.save
    redirect_to restaurant_review_path(@restaurant, @review)
  end

private
  def set_review
    @review = Review.find(params[:id])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end

end
