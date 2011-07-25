class Category < ActiveRecord::Migration
  def self.up
    rename_column :event_types, :type ,:category
  end

  def self.down
  end
end
