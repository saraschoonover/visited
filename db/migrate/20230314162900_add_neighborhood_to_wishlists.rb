class AddNeighborhoodToWishlists < ActiveRecord::Migration[7.0]
  def change
    add_column :wishlists, :neighborhood_name, :string
  end
end
