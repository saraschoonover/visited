class AddContinentToWishlists < ActiveRecord::Migration[7.0]
  def change
    add_column :wishlists, :continent, :string
  end
end
