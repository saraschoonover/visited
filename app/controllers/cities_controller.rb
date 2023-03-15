class CitiesController < ApplicationController
  def home
  end

  def index
    @cities = City.all
  end

  def show
    # set_cities
    @city = City.find(params[:id])
  end

  def new
    @city = City.new
  end

  def create
    # @user = current_user
    @city = City.new(city_params)
    @city.save
    redirect_to city_path(@city)
  end

  def edit
    # @city = City.find(params[:id])
    set_cities
  end

  def update
    set_cities
    @city.update(city_params)
    redirect_to city_path(@city)
  end

  def destroy
    set_cities
    @city.destroy
    redirect_to cities_index_path, status: :see_other
  end

  # def set_user
  #   @user = User.find(params[:id])
  # end

  # def unfavorite
  #   city = City.find(params[:id])
  #   current_user.unfavorite(goat)

  #   redirect_to city_path(city)
  # end

  # def favorite
  #   city = City.find(params[:id])
  #   current_user.favorite(city)

  #   redirect_to city_path(city)
  # end

  private

  def city_params
    params.require(:city).permit(:name, :country, :continent, :neighborhood_name, :park_name, :coffeeshop_name, :string, :restaurant_name)
  end

  def set_cities
    @city = City.find(params[:id])
  end

end
