class CreateOrders < ActiveRecord::Migration[8.0]
  def change
    create_table :orders, id: :uuid do |t|
      t.decimal :total
      t.references :customer, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end
