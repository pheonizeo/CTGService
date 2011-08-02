class Event < ActiveRecord::Base
  belongs_to :event_type

  validates :name, :presence =>true
  validates :location, :presence =>true
  validates :description, :presence =>true
  validates :time_start, :presence =>true
  validates :time_expire, :presence =>true

end

