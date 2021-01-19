class AddInventorytoProducts < ActiveRecord::Migration[6.0]
  def change
    add_colum :products, :inventory, :integer
  end
end
