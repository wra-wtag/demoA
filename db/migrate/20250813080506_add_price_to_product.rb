class AddPriceToProduct < ActiveRecord::Migration[8.0]
  def change
    add_column :products, :price, :decimal, comment: "The price of the product"
    add_index :products, :price
  end
end
