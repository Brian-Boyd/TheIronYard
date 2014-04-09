require "./horse.rb"
require "./track.rb"

# start_screen

@@race_length = 50
@@horses = []
@@race_on = true

track = Track.new("Derby Turby")
horse1 = Horse.new("IronYard Horse")
  @@horses.push(horse1)
horse2 = Horse.new("Seabiscuit")
  @@horses.push(horse2)
horse3 = Horse.new("Secretariat")
  @@horses.push(horse3)
horse4 = Horse.new("Gravedigger")
  @@horses.push(horse4)

track.clear
puts "Starting lineup"
track.display_track

puts "Press enter to start race!"

while @race_on == true
   track.turn
   track.check_win
end
