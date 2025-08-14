class ChangeEmailStringToText < ActiveRecord::Migration[8.0]
  def change
    change_column :users, :email, :text
    change_column_null :users, :email, false
  end
end
