class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [ :show, :update ]

  def index
    @restaurants = Restaurant.all
  end

  def show
    @reviews = @restaurant.reviews
  end

  def create
    @restaurant = Restaurant.new(strong_params)
    if @restaurant.save
      redirect_to @restaurant
    else
      render :new
    end
  end

  def new
    @restaurant = Restaurant.new
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def strong_params
    params.require(:restaurant).permit(:name, :address, :category)
  end
end
