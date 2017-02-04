# Alias Manager Pseudocode

# 1) Prompt user for real_name_str input
# 2) Call real_name_str.downcase! method to store all characters as lowercase
# 3) Call real_name_str.split and store in real_name_arr
# 4) Identify all vowels in array
# 5) Change each vowel in alias to next vowel (a,e,i,o,u) and store in same position
# in alias_arr using method next_vowel
# 5a) Be sure to include special case of "u" conversion to "a"
# 6) Identify all consonants in array
# 7) Change each consonant in alias to next consonant (a,b,c,d,f,g,h,j...) and store 
# in same position in alias_arr using method next_vowel
# 7a) Be sure to include special case of "z" conversion to "b"
# 8) Identify all non-alphabet characters and store without changing in same position
# in alias_arr
# 9) Call Array#join with " " parameter to convert alias_arr to array of 2 strings
# 10) Swap positions of two strings 
# 11) Call Array#join to combine the two elements in a single string with space in 
# between and store in alias_str
# 12) Print out alias_str to console
# 13) Create aliases hash to store each alias_str as key and real_name_str as value



def next_vowel(letter)
	index = VOWELS.index(letter)
	if index == 4
		index = 0
	else
		index += 1		
	end
	return VOWELS[index]
end

def next_consonant(letter)
	index = CONSONANTS.index(letter)
	puts "Index for #{letter} is #{index}"
	if index == 20
		index = 0
	else
		index += 1
	end
	return CONSONANTS[index]
end

def swap_names(name_array)
	space_index = name_array.index(" ")

	puts "Consonants Array before upcase: #{CONSONANTS}"

	first_name_arr = name_array[0..space_index-1]
	first_name_arr[0].upcase!
	first_name_str = first_name_arr.join("")
	
	last_name_arr = name_array[space_index+1..-1]
	last_name_arr[0].upcase!
	last_name_str = last_name_arr.join("")

	puts "Consonants Array: #{CONSONANTS}"
	
	name_array_swapped = [last_name_str, first_name_str]
end

VOWELS = 		["a", "e", "i", "o", "u"]
CONSONANTS = 	["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n",
				"p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]

continue = ""

while continue != "quit"
	real_name_arr = []
	alias_arr = []
	real_name_str = ""


	p "Please enter your real name: "
	real_name_str = gets.chomp

	real_name_str.downcase!

	real_name_arr = real_name_str.split("")

	puts "Real name array: #{real_name_arr}"

	real_name_arr.each { |character| 
		if VOWELS.include?(character)
			puts "Included in VOWELS"
			alias_arr << next_vowel(character)
		elsif CONSONANTS.include?(character)
			alias_arr << next_consonant(character)
			puts "Included in CONSONANTS"
		else
			alias_arr << character
			puts "Neither in VOWELS nor CONSONANTS"
		end
		puts "Character from each loop: #{character}"
	}

	puts "alias_arr: #{alias_arr}"


	alias_arr_swapped = swap_names(alias_arr)

	puts "alias_arr_swapped: #{alias_arr_swapped}"

	alias_str = alias_arr_swapped.join(" ")

	puts "Alias: #{alias_str}"

	puts "Do you want to enter another name? If so, press enter. If not, type 'quit' and then press enter."
	continue = gets.chomp

end
