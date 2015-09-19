class DropUsersEventsTable < ActiveRecord::Migration
  def change
    drop_table :users_events
  end
end
