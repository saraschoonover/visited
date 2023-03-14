class AddParkToWishlists < ActiveRecord::Migration[7.0]
  def change
    add_column :wishlists, :park_name, :string
  end
end
