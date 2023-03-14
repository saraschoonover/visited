class AddCoffeeshopToWishlists < ActiveRecord::Migration[7.0]
  def change
    add_column :wishlists, :coffeeshop_name, :string
  end
end
