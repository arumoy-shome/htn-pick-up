class DeleteEventsUsersTable < ActiveRecord::Migration
  def change
    drop_table :events_users
  end
end
