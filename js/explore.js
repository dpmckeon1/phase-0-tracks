// reverse function pseudocode

// input string to reverse
// separate each character of string into array
// put last character in array into new reversed array
// put second to last character into second position and so on until 0th index
// combine reversed array to create reversed string
// return reversed string

function reverse(input_str) {
	input_arr = input_str.split("")
	return input_arr
}

console.log(reverse("hello"))