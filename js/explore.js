//pseudocode: reverse word
// Iterate through string in reversed order, from back to front and  for each new letter, 
//add it to string for reversed reversed word

function reverseString(originalWord){
	var reversedString = ""
	for (var i = originalWord.length-1; i >= 0; i-=1){
		reversedString += originalWord[i]
	}
	return reversedString
}
console.log(reverseString("whatever"))
console.log(reverseString("not a palindrome"))