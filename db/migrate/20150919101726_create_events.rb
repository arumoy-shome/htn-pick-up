class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.text :location
      t.text :type
      t.datetime :start
      t.datetime :end

      t.timestamps null: false
    end
  end
end
