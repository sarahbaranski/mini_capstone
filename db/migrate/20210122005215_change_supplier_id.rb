class ChangeSupplierId < ActiveRecord::Migration[6.0]
  def change
    rename_column :products, :suppliers_id, :supplier_id
  end
end
