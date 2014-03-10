class Parcel
  def initialize(length, width, height, weight)
    @length = length
    @width = width
    @height = height
    @weight = weight
    @volume = length * width * height
  end

  def length
    @length
  end

  def width
    @width
  end

  def height
    @height
  end

  def weight
    @weight
  end

  def volume
    @volume
  end

  def cost_to_ship

    if @volume > 0 and @volume <= 33
      @cost_to_ship = 5

    elsif @volume >= 34 and @volume <= 66
      @cost_to_ship = 10

    elsif @volume >= 67 and @volume <= 100
      @cost_to_ship = 15

    else
      puts "too big!"
    end

    if @weight > 25
      @cost_to_ship *= 2
    end

    @cost_to_ship

  end
end

test_parcel = Parcel.new(4,2,8,26)
puts test_parcel.cost_to_ship
