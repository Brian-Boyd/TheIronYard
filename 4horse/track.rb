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

def check_win
  if @horses[0].position.to_i > @race_length
    @race_on = false
    puts "\n#{@horses[0].name} is the winner\n\n"
  elsif @horses[1].position.to_i > @race_length
    @race_on = false
    puts "\n#{@horses[1].name} is the winner\n\n"
  elsif @horses[2].position.to_i > @race_length
    @race_on = false
    puts "\n#{@horses[2].name} is the winner\n\n"
  elsif @horses[3].position.to_i > @race_length
    @race_on = false
    puts "\n#{@horses[3].name} is the winner\n\n"
  end
end

def cheat_commands
  puts "Press enter to continue.\n\nIf you want to cheat, press a number, then enter.\n\n1 for fast | 2 for faster | 3 for fastest"
end

def clear
  system "clear"
end