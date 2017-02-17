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

// HasMatchingPair function
// input: 2 objects with key-value pairs
// output: boolean

// 1) Set HasMatchingPair variable to false
// 2) Loop through keys pairs in first object
// 3) For each key in first object, use for loop to find 
// matching key in second object
// 4) If there is a matching key, see if the values match. If so, 
// set HasMatchingPair to true
// 5) Return HasMatchingPair

function HasMatchingPair(object1, object2) {
	var HasMatchingPair = false;
	for (var key1 in object1) {
		// console.log(key1);
		// console.log(object1[key1]);
		for (var key2 in object2) {
			if (key1 == key2 && object1[key1] == object2[key2]) {
				HasMatchingPair = true;	
			}
		}
	}
	return HasMatchingPair;
}



var steven =  {name: "Steven", age: 54};
var tamir = {name: "Tamir", age: 54};
var jerry = {name: "Jerry", age: 55};

console.log(HasMatchingPair(steven, tamir));
console.log(HasMatchingPair(jerry, tamir));
console.log(HasMatchingPair(steven, jerry));

// Release 2

console.log("\n*** Release 2 ***\n");

// generate_testData function
// input: integer for length of array
// output: array of strings

// 1) Declare empty array
// 2) Loop through number of times specified by input
// 3) Generate random letter combinations from 1-10 at a time 
// and append array
// 4) Return array

function GenerateTestData(numElements) {
	testData = [];
	for(i = 0; i < numElements; i++) {
		randomStr = "";
		randomStrLength = 1 + Math.floor(Math.random() * 10);
		for(j = 0; j < randomStrLength; j++) {
			randomStr += GenerateRandomChar();
		}
		testData.push(randomStr);
	}
	return testData;
}

function GenerateRandomChar() {
	randomCharNum = Math.floor(Math.random() * 26);
	randomChar = String.fromCharCode(97 + randomCharNum);
	return randomChar;
}

for(k = 0; k < 10; k++) {
	arrayLength = 1 + Math.floor(Math.random() * 5); // Randomly assign length 1-10
	testData = GenerateTestData(arrayLength);
	console.log("Test Array: " + testData);
	console.log("Longest Word in Array: " + FindLongestPhrase(testData))
}


