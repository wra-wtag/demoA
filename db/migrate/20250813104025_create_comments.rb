class CreateComments < ActiveRecord::Migration[8.0]
  def change
    create_table :comments do |t|
      t.string :title
      t.references :Article, null: false, foreign_key: true
      t.references :News, null: false, foreign_key: true
      t.references :Event, null: false, foreign_key: true

      t.timestamps
    end
  end
end
