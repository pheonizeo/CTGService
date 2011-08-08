class Upcomingevent < ActiveRecord::Base
  validates :name, :presence =>true
  validates :location, :presence =>true
  validates :description, :presence =>true
  validates :timestart, :presence => true
  validates :timeexpire, :presence => true
end
