class AddNameToEvent < ActiveRecord::Migration
  def change
    add_column :events, :name, :text
  end
end
