class AddRestaurantsToCities < ActiveRecord::Migration[7.0]
  def change
    add_column :cities, :restaurant_name, :string
  end
end
