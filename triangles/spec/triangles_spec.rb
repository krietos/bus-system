require 'rspec'
require 'triangles'

describe Triangle do
  it "should create a triangle" do
    test_triangle = Triangle.new(2, 2, 2)
    test_triangle.should be_an_instance_of Triangle
  end
  it 'should create an equilateral triangle' do
    test_triangle = Triangle.new(4, 4, 4)
    test_triangle.triangle_type.should eq "equilateral"
  end
end
