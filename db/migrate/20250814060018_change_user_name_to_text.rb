class ChangeUserNameToText < ActiveRecord::Migration[8.0]
  def change
    change_column :users, :name, :text
  end
end
