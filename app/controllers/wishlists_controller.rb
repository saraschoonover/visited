class WishlistsController < ApplicationController
  def index
    @wishlists = Wishlist.all
  end

  def new
    @wishlist = Wishlist.new
  end

  def show
    set_wishlists
  end

  def create
    # @user = current_user
    @wishlist = Wishlist.new(wishlist_params)
    @wishlist.save
    redirect_to wishlist_path(@wishlist)
  end

  def edit
    set_wishlists
  end

  def update
    set_wishlists
    @wishlist.update(wishlist_params)
    redirect_to wishlist_path(@wishlist)
  end

  def destroy
    set_wishlists
    @wishlist.destroy
    redirect_to wishlists_index_path, status: :see_other
  end

  private

  def wishlist_params
    params.require(:wishlist).permit(:name, :country, :continent, :neighborhood_name, :park_name, :coffeeshop_name, :restaurant_name)
  end

  def set_wishlists
    @wishlist = Wishlist.find(params[:id])
  end
end
