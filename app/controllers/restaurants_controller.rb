# frozen_string_literal: true

class RestaurantsController < ProtectedController
  before_action :set_restaurant, only: %i[show update destroy]

  # GET /restaurants
  def index
    @restaurants = current_user.restaurants.all

    render json: @restaurants
  end

  # GET /restaurants/1
  @restaurants = Restaurant.all

  def show
    render json: @restaurant
  end

  # POST /restaurants
  def create
    @restaurant = current_user.restaurants.build(restaurant_params)

    if @restaurant.save
      render json: @restaurant, status: :created, location: @restaurant
    else
      render json: @restaurant.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /restaurants/1
  def update
    if @restaurant.update(restaurant_params)
      render json: @restaurant
    else
      render json: @restaurant.errors, status: :unprocessable_entity
    end
  end

  # DELETE /restaurants/1
  def destroy
    @restaurant.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_restaurant
    @restaurant = current_user.restaurants.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def restaurant_params
    params.require(:restaurant).permit(:id, :restaurant_name, :cuisine)
  end
end
