# Full game pseudocode

# 1) Ask user A for mystery word
# 2) Store mystery word in class instance variable
# while mystery word has not been fully guessed and 
# guess limit has not been reached
# 	3) Ask user B for new guess letter
# 	4) Check for presence of guess letter in mystery word
# 	5) If it is present, show user location where it is present
# 	6) If it is not present, show user same 
# end
# 7) Deliver congratulatory message if win and taunt if lose


# class WordGame pseudocode

# a) Store mystery_word in variable
# b) Set max_guesses equal to mystery_word_length times 1.5
# c) Create empty array of same length to store guess_progress
# d) Check guess letter input against mystery_word and previous_guesses
# e) If present in previous guesses, do not up guess_count and notify player
# f) Elsif present in mystery word, store letter in proper location in guess_progress
# g) Else do not update guess progress
# h) Return guess_progress to display to user

class WordGame
	attr_accessor :mystery_word_arr, :guess_arr, :max_guesses, :guess_index_arr, 
	:result, :num_guesses	

	def initialize(mystery_word_str)
		@result = "ongoing"
		@mystery_word_arr = mystery_word_str.split("")
		@guess_arr = Array.new(mystery_word_arr.length, "_")
		@num_guesses = 0
		@max_guesses = (@mystery_word_arr.length * 1.5).to_i # Rounds down to nearest integer
	end

	
	def categorize_guess(guess_letter)
		if @mystery_word_arr.include?(guess_letter) && !@guess_arr.include?(guess_letter)
			"present"
		elsif @guess_arr.include?(guess_letter)
			@num_guesses -= 1 	#Adjust num_guesses down one on repeat guesses to ensure 
								# it is not counted against limit
			"repeat"
		else
			"absent"
		end
	end

	def find_guess_index(guess_letter)
		@guess_index = []
		i = 0
		while i < @mystery_word_arr.length
			if @mystery_word_arr[i] == guess_letter
				@guess_index << i
			end
			i += 1
		end
		@guess_index
	end

	def update_guess_arr(guess_index, guess_letter)
		guess_index.each { |index| @guess_arr[index] = guess_letter }
		@guess_arr
	end

	def generate_updated_guess_str
		@guess_arr.join(" ")
	end

	def update_guesses_and_result
		@num_guesses += 1
		if @num_guesses <= @max_guesses  && @mystery_word_arr == @guess_arr
			@result = "win"
		elsif @num_guesses == @max_guesses
			@result = "lose"
		end
	end

	def generate_message
		if @result == "win"
			"Congratulations!!! You're a winner!"
		else
			"Following a string of failed guesses, you've lost the game. You've both lost the battles and the war."
		end
	end
end

# Prompt for word

puts "First Player...please enter mystery word: "
mystery_word = gets.chomp

game = WordGame.new(mystery_word)

while game.result == "ongoing"

	puts "Second Player...Please enter a letter that you think is in the mystery word: "

	guess_letter = gets.chomp

	if game.categorize_guess(guess_letter) == "present"
		guess_index = game.find_guess_index(guess_letter)
		game.update_guess_arr(guess_index, guess_letter)
		puts "Very nice. You've revealed #{guess_index.length} more letters in the mystery word"	
	elsif game.categorize_guess(guess_letter) == "repeat"
		puts "You've already guessed #{guess_letter}. Try a different letter next time. We won't count that one against you."
	else
		puts "Missed the mark on that one."
	end

	puts game.guess_arr.join(" ")

	game.update_guesses_and_result
end

puts game.generate_message