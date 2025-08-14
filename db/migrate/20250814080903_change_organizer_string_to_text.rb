class ChangeOrganizerStringToText < ActiveRecord::Migration[8.0]
  def change
    change_column :events, :organizer, :text
  end
end
