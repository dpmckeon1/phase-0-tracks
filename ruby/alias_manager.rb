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
# 7a) Be sure to include special case of "z" conversion to "a"
# 8) Identify all non-alphabet characters and store without changing in same position
# in alias_arr
# 9) Call Array#join with " " parameter to convert alias_arr to array of 2 strings
# 10) Swap positions of two strings 
# 10) Call Array#join to combine the two elements in a single string and store in alias_str
# 11) Print out alias_str to console
# 12) Create aliases hash to store each alias_str as key and real_name_str as value