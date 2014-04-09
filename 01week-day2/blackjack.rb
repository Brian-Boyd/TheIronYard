# Blackjack
player_cards = []
dealer_cards = []
@gameon = true

def get_card
	rand(1..11)
end

def check_win(player,dealer)
	if player == 21
		puts "BLACKJACK"
	elsif player > 21
		puts "Player BUST"
	elsif player > dealer
		puts "Player WIN"
	elsif player < dealer
		if dealer > 21
			puts "Dealer BUST"
		else
			puts "Player LOST"
		end
	elsif player == dealer
		puts "PUSH"
	end
end

# Player cards
player_cards.push(get_card)
player_cards.push(get_card)

# Dealer cards
dealer_cards.push(get_card)
dealer_cards.push(get_card)

# Player's turn
while @gameon == true
	player_card_values = 0
	puts "The player has the following cards: "
	player_cards.each do |card|
		print "#{card}, "
		player_card_values += card
	end
	if player_card_values > 21
		puts "Player BUST"
		@gameon = false
	else
		puts "Player card total: #{player_card_values}"
		puts "Does the player want to hit or stay (h to hit, s to stay)?"
		hit_or_stay = gets.chomp
		if hit_or_stay == 'h'
			new_card = get_card
			player_cards.push(new_card)
			puts "This is the player's new card #{new_card}"
			player_card_values += new_card
			puts "The player's total is now: #{player_card_values} "
			if player_card_values > 21
				puts "Player BUST"
				@gameon = false
			end
		end

		if hit_or_stay == 's'
			@gameon = false
		end
	end
end

# Dealer's turn
if player_card_values < 22
	@gameon = true
	while @gameon == true
		dealer_card_values = 0
		puts "The dealer has the following cards: "
		dealer_cards.each do |card|
			puts card
			dealer_card_values += card
		end
		puts "Dealer card total: #{dealer_card_values}"
		if dealer_card_values < 17
			new_card = get_card
			dealer_cards.push(new_card)
			puts "This is the dealer's new card #{new_card}"
			dealer_card_values += new_card
			puts "The dealer's total is now: #{dealer_card_values} "
		else
			@gameon = false
		end
	end
	check_win(player_card_values,dealer_card_values)
end

