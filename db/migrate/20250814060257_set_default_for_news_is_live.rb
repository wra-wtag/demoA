class SetDefaultForNewsIsLive < ActiveRecord::Migration[8.0]
  def change
    change_column_default :news, :is_live, from: nil, to: false
  end
end
