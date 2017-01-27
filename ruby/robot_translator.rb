# ROBOT TRANSLATOR

# If a letter is capitalized and it's in the first half of the
# alphabet, it becomes "bloop".

# Otherwise, if a letter is capitalized or it's the letter "e", it
# becomes "buzz".

# If it's not a letter at all, it becomes "boing".

# Otherwise, it becomes "beep".

def translate_array (array_to_translate)
	robot_translation = ""
	for x in array_to_translate
		robot_translation += translate_char(x)	
	end	
	return robot_translation
end

def translate_char (char_to_translate)
	all_letters = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z","A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]
	bloop_letters = ["A","B","C","D","E","F","G","H","I","J","K","L","M"]
	buzz_letters = ["e","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]
	if bloop_letters.include? char_to_translate
		"bloop"
	elsif buzz_letters.include? char_to_translate
		"buzz"
	elsif !all_letters.include? char_to_translate
		"boing"
	else
		"beep"
	end
end


puts "Write a word to translate via robot: "
word_to_translate = gets.chomp

array_to_translate = word_to_translate.split("")

robot_translation = translate_array(array_to_translate)


puts "The translation is: "

puts robot_translation