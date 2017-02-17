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