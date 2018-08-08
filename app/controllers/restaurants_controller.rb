class RestaurantsController < ApplicationController

before_action :find_restaurant, only: [:show, :edit, :update, :destroy]

  def index
    @restaurants = Restaurant.all
    @reviews = Review.where(@restaurant)
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(pet_params)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  def show
    @reviews = @restaurant.reviews
    @review = Review.new
  end

  private

  def pet_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end

  def find_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end
