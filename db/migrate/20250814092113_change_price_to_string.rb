class ChangePriceToString < ActiveRecord::Migration[8.0]
  def change
    reversible do |direction|
      change_table :products do |t|
        direction.up    { t.change :price, :string }
        direction.down  { t.change :price, :decimal }
      end
    end
  end
end