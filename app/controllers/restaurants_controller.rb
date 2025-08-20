class RestaurantsController < ApplicationController
  def index
  @restaurant = Restaurant.all
  end

  def show
  @restaurant = Restaurant.find(params[:id])
  end

  def new
  @restaurant = Restaurant.new
  end

  # def edit
  # @restaurant = Restaurant.find(params[:id])
  # end

  def create
  @restaurant = Restaurant.new(restaurant_params[:restaurant])
  @restaurant.save
  # redirect_to restaurant_path(@restaurant)
  end

  # def update
  # @restaurant = Task.find(params[:id])
  # @restaurant.update(restaurant_params)
  # redirect_to restaurant_path(@restaurant)
  # end

  # def destroy
  #   @restaurant = Task.find(params[:id])
  #   @restaurant.destroy
  #   redirect_to tasks_path, status: :see_other
  # end

  # def new_review
  # @review = Review.new
  # end

  # def create_review
  # @review = Review.new(review_params[:review])
  # @review.save
  # redirect_to restaurant_path(@restaurant)
  # end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end

  # def review_params
  #   params.require(:review).permit(:rating, :content, :restaurant_id)
  # end

end
