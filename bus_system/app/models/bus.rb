class Bus < ActiveRecord::Base

  has_many :stops
  belongs_to :line
  has_many :stations, :through => :stops

end

