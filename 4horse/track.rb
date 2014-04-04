# Welcome Screen
def start_screen
  system "clear"
  print "\n\rWelcome to Iron Yard Downs"; sleep 2
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

def turn
  cheat = gets.chomp.to_i
  if cheat == 1
    @horses[0].position += 2
    @horses.each do |value|
      value.move_forward
    end
  elsif cheat == 2
    @horses[0].position += 3
    @horses.each do |value|
      value.move_forward
    end
  elsif cheat == 3
    @horses[0].position += 4
    @horses.each do |value|
      value.move_forward
    end
  elsif cheat == 0
    @horses.each do |value|
      value.move_forward
    end
  end
  system "clear"
  display_track
  cheat_commands
end

def cheat_commands
  puts "Enter... 1 for fast | 2 for faster | 3 for fastest"
end

def clear
  system "clear"
end