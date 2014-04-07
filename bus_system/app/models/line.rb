class Line < ActiveRecord::Base

 has_many :stops
 has_many :buses
 has_many :stations, :through => :stops

end
