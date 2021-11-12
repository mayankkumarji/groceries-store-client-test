class AddSkuToProducts < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :sku, :string, limit: 20
    add_index :products, :sku, unique: true
  end
end
