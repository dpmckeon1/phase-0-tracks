// Release 0

console.log("*** Release 0 ***\n");

// find_longest_phrase function
// input: array of strings
// output: string

// 1) split first string in array into array characters
// 2) find length of said array
// 3) store as longest_phrase
// 4) test rest of strings in array and if any are longer, store in longest_phrase
// 5) return longest_phrase

function FindLongestPhrase(phrasesArray) {
	var longestPhrase = "";
	for(i = 0; i < phrasesArray.length; i++) {
		var testPhrase = phrasesArray[i];
		if (testPhrase.length > longestPhrase.length) {
			longestPhrase = testPhrase;
		}
	}
	return longestPhrase;
}

phraseArray1 = ["Doohicky", "Start", "Pool"];

phraseArray2 = ["Look", "At", "This", "Five Element Long", "Array"];

phraseArray3 = ["Look At", "This Three", "Element Long Array"];

console.log(FindLongestPhrase(phraseArray1));

console.log(FindLongestPhrase(phraseArray2));

console.log(FindLongestPhrase(phraseArray3));

// Release 1

console.log("\n*** Release 1 ***\n");

// has_matching_pair function
// input: 2 objects with key-value pairs
// output: boolean

// 1) Set has_matching_pair variable to false
// 2) Loop through keys pairs in first object
// 3) For each key in first object, use for loop to find 
// matching key in second object
// 4) If there is a matching key, see if the values match. If so, 
// set has_matching_pair to true
// 5) Return has_matching_pair

function has_matching_pair(object1, object2) {
	var has_matching_pair = false;
	for (var key1 in object1) {
		// console.log(key1);
		// console.log(object1[key1]);
		for (var key2 in object2) {
			if (key1 == key2 && object1[key1] == object2[key2]) {
				has_matching_pair = true;	
			}
		}
	}
	return has_matching_pair;
}



var steven =  {name: "Steven", age: 54};
var tamir = {name: "Tamir", age: 54};
var jerry = {name: "Jerry", age: 55};

console.log(has_matching_pair(steven, tamir));
console.log(has_matching_pair(jerry, tamir));
console.log(has_matching_pair(steven, jerry));

// Release 2

console.log("\n*** Release 2 ***\n");

// generate_test_data function
// input: integer for length of array
// output: array of strings

// 1) Declare empty array
// 2) Loop through number of times specified by input
// 3) Generate random letter combinations from 1-10 at a time 
// and append array
// 4) Return array

function generate_test_data(num_elements) {
	test_data = [];
	for(i = 0; i < num_elements; i++) {
		random_str = "";
		random_str_length = 1 + Math.floor(Math.random() * 10);
		for(j = 0; j < random_str_length; j++) {
			random_str += generate_random_char();
		}
		test_data.push(random_str);
	}
	return test_data;
}

function generate_random_char() {
	random_char_num = Math.floor(Math.random() * 26);
	random_char = String.fromCharCode(97 + random_char_num);
	return random_char;
}

for(k = 0; k < 10; k++) {
	array_length = 1 + Math.floor(Math.random() * 5); // Randomly assign length 1-10
	test_data = generate_test_data(array_length);
	console.log("Test Array: " + test_data);
	console.log("Longest Word: " + FindLongestPhrase(test_data))
}


