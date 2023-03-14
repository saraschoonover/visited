class AddCoffeeShopsToCities < ActiveRecord::Migration[7.0]
  def change
    add_column :cities, :coffeeshop_name, :string
    add_column :cities, :string, :string
  end
end
