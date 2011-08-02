class EventType < ActiveRecord::Base
  has_many :events
  validates :type, :presence =>true

end
