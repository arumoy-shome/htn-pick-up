class AddAttributesToUsers < ActiveRecord::Migration
  def change
    add_column :users, :address, :text
    add_column :users, :sports, :text
  end
end
