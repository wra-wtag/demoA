class ChangeIsLiveDefaultTrue < ActiveRecord::Migration[8.0]
  def change
    change_column_default :news, :is_live, from: false, to: true
  end
end
