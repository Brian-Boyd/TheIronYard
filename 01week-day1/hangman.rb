# Hangman Exercise - Welcome Screen

# STEPS:
# 1) Load text file with words
# 2) Determine the amount of guesses by multiplying word length by 1.7
# 3) Create an array of the alphabet to choose from
# 4) Display board with _ for every letter of word
# 5) Build an array to store correctly guest letters and replace the _
# 6) Build an array to store guessed missed letters
# 7) Delete letters from the alphabet array when the player guesses them
# 8) Display remaining guesses after each turn
# 9) If guess is a correct letter, do not subtract from total guesses



system "clear"
puts "\n-----------------"
puts "Lets Play Hangman"
puts "-----------------"

# words = ["tiger","panther","giraffe","elephant","gazelle","zebra"]
# @random_word = words.sample

dictionary = File.open('dictionary.txt')
words = dictionary.readlines
words.shuffle!
@random_word = words.sample

def display_board
  puts "Your word is... \n"
  @random_word.length.times do
    print "_ "
  end
  puts "\n\n"
end

# Determine the amount of guesses for word length and multiple by 1.7
# The case statement below would not be needed
total_guesses =	case @random_word.length
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
alphabet = [*('A'..'Z')]

# Display details
puts "#{@random_word} - Random word - should be hidden"
puts "#{total_guesses} - Total guesses"
puts "Unguessed letters: #{[alphabet.join(' ')]}"
puts "-----------------"

display_board

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
@random_word.split("")
test = Array.new(@random_word.length)
# %w(test).each_with_index do |letter, index|
# 	if guessed_letter == letter
# 		test[index] = guessed_letter
# 	end
# end
# puts test





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

# @random_word.split("")
# test = Array.new(@random_word.length)
# test.each_with_index do |letter, index|
# 	if guessed_letter == letter
# 		test[index] = guessed_letter
# 	end
# end

# methods of interest: each, index, include, collect
# @random_word.index(guessed_letter)
# # @random_word.split("")
# while word_index(guessed_letter)
# end

# def display_choice(guessed_letter)
# 	if guessed_letter == true
# 		puts "You guessed letter #{guessed_letter} correctly"
#     else
#     	put "Incorrect choice"
# 	end
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
