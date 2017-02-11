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
	attr_reader :mystery_word_arr, :guess_arr, :max_guesses, :letter_check_arr	

	def initialize(mystery_word_str)
		@mystery_word_arr = mystery_word_str.split("")
		@guess_arr = Array.new(mystery_word_arr.length, "_")
		@max_guesses = (@mystery_word_arr.length * 1.5).to_i # Rounds down to nearest integer
	end
	def process_guess(guess_letter)
		if @mystery_word_arr.includes? (guess_letter)
			self.process_correct_guess
		else
			puts "Sorry, #{guess_letter} is not in the mystery word"
		end
		@mystery_word_arr
	end

	def process_correct_guess
		i = 0
		while i < @mystery_word_arr.length




	def generate_message(game_result)
	end
end