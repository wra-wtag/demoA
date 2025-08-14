class CreateJoinTableBooksEvents < ActiveRecord::Migration[8.0]
  def change
    create_join_table :books, :events do |t|
      t.index :book_id
      t.index :event_id
    end
  end
end
