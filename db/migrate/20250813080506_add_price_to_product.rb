class AddPriceToProduct < ActiveRecord::Migration[8.0]
  def change
    add_column :products, :price, :decimal
    add_index :products, :price
  end
end
