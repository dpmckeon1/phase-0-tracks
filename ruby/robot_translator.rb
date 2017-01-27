# ROBOT TRANSLATOR

# If a letter is capitalized and it's in the first half of the
# alphabet, it becomes "bloop".

# Otherwise, if a letter is capitalized or it's the letter "e", it
# becomes "buzz".

# If it's not a letter at all, it becomes "boing".

# Otherwise, it becomes "beep".

"Write a word to translate via robot: "
word_to_translate = gets.chomp

array_to_translate = word_to_translate.split("")

puts array_to_translate