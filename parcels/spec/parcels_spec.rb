require 'rspec'
require 'parcels'

describe Parcel do
  it "is initialized with dimensions and weight" do
    test_parcel = Parcel.new(4,4,4,1)
    test_parcel.should be_an_instance_of Parcel
  end

  it "should be able to tell us its volume" do
    test_parcel = Parcel.new(4,4,4,1)
    test_parcel.volume.should eq 64
  end

  it "should return cost based on size and weight" do
    test_parcel = Parcel.new(4,2,8,26)
    test_parcel.cost_to_ship.should eq 20
  end

end
