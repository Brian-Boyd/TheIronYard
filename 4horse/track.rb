# Welcome Screen
def start_screen
  system "clear"
  print "\n\rWelcome to Iron Yard Downs"; sleep 3
  system "clear"
  print "\n\rOn your mark, "; sleep 1
  print "get set, "; sleep 1
  print "go"; sleep 1
end

def display_track
  puts "--------------------------------------------------"
  @horses.each do |value|
    value.position.times do |n|
      print "."
    end
    puts value.name
  end
  puts "--------------------------------------------------\n\n"
end

# def turn
#   @horses.each do |value|
#     value.move_forward
#   end
#   play = gets.chomp
#   system "clear"
#   display_track
# end

def turn
  if cheat == fast
    @horses[0].position += 2
    @horses.each do |value|
    value.move_forward
  end
  elsif cheat == faster
    @horses[0].position += 3
    @horses.each do |value|
    value.move_forward
  end
  elsif cheat == fastest
    @horses[0].position += 4
    @horses.each do |value|
    value.move_forward
  end
  play = gets.chomp
  system "clear"
  display_track
end

def clear
  system "clear"
end