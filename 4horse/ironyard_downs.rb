require "./horse.rb"
require "./track.rb"

start_screen

@horses = []

horse1 = Horse.new("My Horse")
@horses.push(horse1)
horse2 = Horse.new("Seabiscuit")
@horses.push(horse2)
horse3 = Horse.new("Secretariat")
@horses.push(horse3)
horse4 = Horse.new("Gravedigger")
@horses.push(horse4)

clear
display_track

$i = 0
$num = 20 # @horses.value.position

while $i < $num  do
   turn
   $i +=1
end


















# raceon = true

# while raceon == true
#   a = 20
# puts "Enter to continue"
# play = gets.chomp
# system "clear"
#   puts "----------------------------------------------------"

#   (1..20).each do |number|
#     print " *"
#     if number == 20
#       raceon = false
#     end
#   end
# end
#   puts "\n----------------------------------------------------"

















# test_1 = true

# while test_1 == true
#   a = [1,2,3,4]    # rand(1..4)
#   puts "----------------------------------------------------"

#   (1..20).each do |number|
#     print " *"
#     if number == 20
#       test_1 = false
#     end
#   end
# end
#   puts "\n----------------------------------------------------"





# $i = 0
# $num = 20

# while $i < $num  do
#    print("*" )
#    $i +=1
# end

