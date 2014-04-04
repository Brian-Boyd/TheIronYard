# Hangman Exercise - Welcome Screen
puts "\n-----------------"
puts "Lets Play Hangman"
puts "-----------------"

words = ["tiger","panther","giraffe","elephant","gazelle","zebra"]
random_word = words.sample

# Read dictionary file
# http://stackoverflow.com/questions/4475957/how-to-read-an-open-file-in-ruby
# puts "Start"
# puts File.read("dictionary.txt")
# puts "End"

# Method to disply board
# def get_display(random_word)
# 	display=
# 	for spaces in random_word.length
# 		display=display+'-'
# 	end
# 	return display
# end
# get_display



# Determine the amount of guesses for word length
total_guesses =	case random_word.length
	when 5
		guess = 8
	when 6
		guess = 9
	when 7
		guess = 11
	when 8
		guess = 12
end

# Create an array of the alphabet
alphabet = [*('a'..'z')]

# Display details
puts "#{random_word} - Random word"
puts "#{random_word.length} - Total letters in word"
puts "#{total_guesses} - Total guesses"
puts "Unguessed letters: #{[alphabet.join(' ')]}"
puts "-----------------"

# Guess a letter
guessed_letters = []
print "Guess a letter: "
guessed_letter = gets.chomp
guessed_letters.push(guessed_letter)

puts "You guessed #{guessed_letter}"
puts "Guessed Letters: #{guessed_letters.join(" ")}"
alphabet.delete(guessed_letter)
puts "Unguessed Letters: #{alphabet.join(' ')}"

# Search to see if letter guessed is in the random word.
# If yes, show letter. If no, loose a life.
random_word.split("")
test = Array.new(random_word.length)
# %w(test).each_with_index do |letter, index|
# 	if guessed_letter == letter
# 		test[index] = guessed_letter
# 	end
# end
# puts test


# i = 0
# while i < total_guesses
# end










# def is_letter_in_word(test,guessed_letter)
#     if (test == nil)
#         return false
#     else
#         if(test.index(guessed_letter)!=nil)
#             return true
#         else
#             return false
#         end
#     end
# end



# def final()
# 	print ">>> "
# 	full_word = 
# 	if full_word
# 		puts "You Win"
# 	else
# 		puts "You Lose"
# 	end
# end





######################
# Needed to complete #
######################
# - User has to guess the correct word letter by letter
# - If the user gets it correctly, hooray!
# - If not, WOOPS
# - Import the dictionary.txt file
# 	- Shuffle the words
# 	- Choose a random word based on the length









###################################################
# The following are trial/error and partial notes #
###################################################

# random_word.split("")
# test = Array.new(random_word.length)
# test.each_with_index do |letter, index|
# 	if guessed_letter == letter
# 		test[index] = guessed_letter
# 	end
# end

# methods of interest: each, index, include, collect
# random_word.index(guessed_letter)
# # random_word.split("")
# while word_index(guessed_letter)
# end

# def display_choice(guessed_letter)
# 	if guessed_letter == true
# 		puts "You guessed letter #{guessed_letter} correctly"
#     else
#     	put "Incorrect choice"
# 	end
# end










# display_board
# while @game_on == true
# 	puts "Player 1 Choice (1-9):"
# 	player_1_choice = gets.chomp
# 	game_play(player_1_choice, 1)
# 	display_board
# 	check_win(1)
# 	puts "Player 2 Choice (1-9):"
# 	player_2_choice = gets.chomp
# 	game_play(player_2_choice, 2)
# 	display_board
# 	check_win(2)
# end


# Reference Links
# http://www.ruby-doc.org/core-1.9.3/Array.html
# http://www.ruby-doc.org/core-2.1.1/Array.html#method-i-each_index
# http://www.ruby-doc.org/core-2.1.1/Array.html#method-i-each_with_index
# http://ruby.learncodethehardway.org/book/ex32.html
# http://stackoverflow.com/questions/1986386/check-if-value-exists-in-array-in-ruby
# http://www.sitepoint.com/guide-ruby-collections-part-arrays/
# http://rubyquiz.com/quiz130.html
# https://gist.github.com/JDLeigh10/3029383








