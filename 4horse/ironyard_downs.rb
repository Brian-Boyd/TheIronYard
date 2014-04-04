require "./horse.rb"
require "./track.rb"

start_screen

@horses = []

horse1 = Horse.new("IronYard Horse")
  @horses.push(horse1)
horse2 = Horse.new("Seabiscuit")
  @horses.push(horse2)
horse3 = Horse.new("Secretariat")
  @horses.push(horse3)
horse4 = Horse.new("Gravedigger")
  @horses.push(horse4)

clear
puts "Starting lineup"
display_track

puts "Press enter to start race!"

# def horse_position
#   if @horses[0].position.to_i > 19
#     puts "#{@horses[0].name} is the winner"
#   elsif @horses[1].position.to_i > 19
#     puts "#{@horses[1].name} is the winner"
#   elsif @horses[2].position.to_i > 19
#     puts "#{@horses[2].name} is the winner"
#   elsif @horses[3].position.to_i > 19
#     puts "#{@horses[3].name} is the winner"
#   end
# end

$i = 0
$num = 20
# $num = horse_position.to_i

while $i < $num  do
   turn
   $i += 1
end


# How do I comment line 36 and use line 37 instead?
# Lines 23-33 seem logical, but it doesn't work as the race does not even run

