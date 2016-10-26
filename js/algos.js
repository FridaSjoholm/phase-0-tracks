// To solve this we need to make a method that takes an array of strings as input, 
//Then we'll set a variable x that stores the longest string so far. 
//- Make a loop that loops through each string in array and compares it to x, if its longer
// x will be given value of string (first time, it definitely will be as x is set to a empty string)
// After loop retrurn longest word.


function comparer(stringArray){
	var longest = ""
	for (var i = 0; i < stringArray.length; i++){
		if (stringArray[i].length> longest.length){
			longest = stringArray[i]
		}
	}
	return longest
}

console.log(comparer(["long phrase","longest phrase","longer phrase"]))