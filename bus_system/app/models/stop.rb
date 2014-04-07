class Stop < ActiveRecord::Base

  belongs_to :station
  belongs_to :line
  belongs_to :bus
end
