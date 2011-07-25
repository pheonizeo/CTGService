class CreateEvents < ActiveRecord::Migration
  def self.up
    create_table :events do |t|
      t.text :name
      t.text :location
      t.text :description
      t.datetime :time_start
      t.datetime :time_expire
      t.integer :event_id

      t.timestamps
    end
  end

  def self.down
    drop_table :events
  end
end
