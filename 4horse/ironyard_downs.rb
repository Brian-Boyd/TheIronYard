require "./horse.rb"
require "./track.rb"

start_screen

@race_length = 50
@horses = []
@race_on = true

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

while @race_on == true
   turn
   check_win
end
