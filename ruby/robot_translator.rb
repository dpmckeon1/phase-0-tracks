# ROBOT TRANSLATOR

# If a letter is capitalized and it's in the first half of the
# alphabet, it becomes "bloop".

# Otherwise, if a letter is capitalized or it's the letter "e", it
# becomes "buzz".

# If it's not a letter at all, it becomes "boing".

# Otherwise, it becomes "beep".

puts "Write a word to translate via robot: "
word_to_translate = gets.chomp

array_to_translate = word_to_translate.split("")

all_letters = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z","A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]
bloop_letters = ["A","B","C","D","E","F","G","H","I","J","K","L","M"]
buzz_letters = ["e","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]

robot_translation = ""

for x in array_to_translate
	if bloop_letters.include? x
		current_translation = "bloop"
	elsif buzz_letters.include? x
		current_translation = "buzz"
	elsif !all_letters.include? x
		current_translation = "boing"
	else
		current_translation = "beep"
	end
	robot_translation += current_translation
end

puts "The translation is: "

puts robot_translation