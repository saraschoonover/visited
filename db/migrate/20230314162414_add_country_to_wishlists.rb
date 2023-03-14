class AddCountryToWishlists < ActiveRecord::Migration[7.0]
  def change
    add_column :wishlists, :country, :string
  end
end
