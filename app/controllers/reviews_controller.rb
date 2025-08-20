class ReviewsController < ApplicationController

  def new_review
  @review = Review.new
  end

  def create_review
  @review = Review.new(review_params[:review])
  @review.save
  redirect_to restaurant_path(@restaurant)
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content, :restaurant_id)
  end

end
