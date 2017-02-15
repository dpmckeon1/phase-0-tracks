// reverse function pseudocode

// input string to reverse
// separate each character of string into array
// put last character in array into new reversed array
// put second to last character into second position and so on until 0th index
// combine reversed array to create reversed string
// return reversed string

function reverse(inputStr) {
	inputArr = inputStr.split("");
	var reversedStr = ""
	endIndex = inputArr.length - 1;
	for (i = endIndex; i >= 0; i--) {
		reversedStr += inputArr[i]
	}

	return reversedStr;
}

reverseHello = true;
var helloReversed = reverse("hello");

if (reverseHello == true) {
	console.log(helloReversed);
}

