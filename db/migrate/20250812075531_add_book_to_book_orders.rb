class AddBookToBookOrders < ActiveRecord::Migration[8.0]
  def change
    add_reference :book_orders, :book, foreign_key: true
  end
end
