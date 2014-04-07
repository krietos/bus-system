class Station < ActiveRecord::Base

  has_many :stops
  has_many :lines, :through => :stops
  has_many :buses, :through => :stops

  validates :name, :uniqueness => true, :presence => :true

end
