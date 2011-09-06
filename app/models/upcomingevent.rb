class Upcomingevent < ActiveRecord::Base

  validates :name, :presence =>true
  validates :location, :presence =>true
  validates :description, :presence =>true

  validates :timestart, d :presence => true
  validates :timeexpire, :presence => true



end
