class AddRestaurantToWishlists < ActiveRecord::Migration[7.0]
  def change
    add_column :wishlists, :restaurant_name, :string
  end
end
