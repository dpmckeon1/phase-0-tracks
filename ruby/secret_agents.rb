# Encrypt Method Pseudocode:

# 1. Takes string argument
# 2. Turns string into array
# 3. Calls next method on each character in array unless character=="z" in which case result=="a" 
# 4. Add to string
# 5. Returns string

def encrypt(string_to_increment)
	array_to_increment = string_to_increment.split("")



# Decrypt Method Pseudocode:

# 1. Create ALPHABET constant: "abcdefghijklmnopqrstuvwxyz"
# 2. Takes string argument
# Turns string into array
# 3. Run index method on ALPHABET with each element of array as an argument,
# decrease by one, then retrieve each character from ALPHABET with new decreased index.
# 4. Add character to result_string
# 5. Returns string

