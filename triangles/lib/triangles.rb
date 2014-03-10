class Triangle
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def side1
    @side1
  end

  def side2
    @side2
  end

  def side3
    @side3
  end

  def triangle_type
    if @side1 + @side2 < @side3 || @side1 + @side3 < @side2 || @side2 + @side3 < @side1
      @triangle_type = "not a triangle"
    elsif @side1 == @side2 && @side2 == @side3
      @triangle_type = "equilateral"
    elsif @side1 == @side3 || @side1 == @side2 || @side2 == @side3
      @triangle_type = "isosceles"
    elsif @side1 != @side2 && side2 != @side3 && @side1 != @side3
      @triangle_type = "scalene"
    else
      ""
    end

    @triangle_type
  end
end

test_triangle = Triangle.new(2, 5, 7)
test_triangle.triangle_type
