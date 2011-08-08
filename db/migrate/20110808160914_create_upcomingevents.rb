class CreateUpcomingevents < ActiveRecord::Migration
  def self.up
    create_table :upcomingevents do |t|
      t.string :name
      t.string :description
      t.string :location
      t.datetime :timestart
      t.datetime :timeexpire

      t.timestamps
    end
  end

  def self.down
    drop_table :upcomingevents
  end
end
