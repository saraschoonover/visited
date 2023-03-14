class AddParksToCities < ActiveRecord::Migration[7.0]
  def change
    add_column :cities, :park_name, :string
  end
end
