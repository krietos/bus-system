require "./lib/parcels.rb"

def main
  puts "Get a shipping quote based on the size of your package."
  puts "Please enter the length:"
  @length = gets.chomp.to_i
  puts "Please enter the width:"
  @width = gets.chomp.to_i
  puts "Please enter the height:"
  @height = gets.chomp.to_i
  puts "Please enter the weight:"
  @weight = gets.chomp.to_i
  puts new_parcel
end

def new_parcel
  new_parcel = Parcel.new(@length, @width, @height, @weight)
  final_price = new_parcel.cost_to_ship
end


main
