class AddQuantityToBookOrders < ActiveRecord::Migration[8.0]
  def change
    add_column :book_orders, :quantity, :integer
  end
end
