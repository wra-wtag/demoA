class UpdateEventsTable < ActiveRecord::Migration[8.0]
  def change
    change_table :events do |t|
      t.rename :venue, :location
      t.string :organizer
      t.index :organizer
    end
  end
end
