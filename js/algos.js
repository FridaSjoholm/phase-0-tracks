//Comparer:
// To solve this we need to make a method that takes an array of strings as input, 
//Then we'll set a variable x that stores the longest string so far. 
//- Make a loop that loops through each string in array and compares it to x, if its longer
// x will be given value of string (first time, it definitely will be as x is set to a empty string)
// After loop retrurn longest word.

//MatchChecker
// create function that takes two objects, and first compare if the keys are the same in a loop, 
//and if they are, also compare if the values are the same. If they are, we return true, if not false. 
// To be able to compare all keys to each other (if they are in differnt order in different objects),
// we need two forloops nested with different indexes. 



function comparer(stringArray){
	var longest = ""
	for (var i = 0; i < stringArray.length; i++){
		if (stringArray[i].length> longest.length){
			longest = stringArray[i]
		}
	}
	return longest
}

function matchChecker(obj1, obj2){
	var keys1 = Object.keys(obj1);
	var keys2 = Object.keys(obj2);

	for (var i = 0; i < keys1.length; i++){
		for (var j = 0; j <keys1.length; j++){
			if (keys1[i] == keys2[j]){
				if (obj1[keys1[i]] == obj2[keys2[j]]){
					//console.log(keys1[i] + " = " + obj1[keys1[i]] + " is the same as " + keys2[j]  +" = " + obj2[keys2[j]])
					return true
				}
			}

		}
	}
	return false;
}

console.log(comparer(["long phrase","longest phrase","longer phrase"]))
console.log(comparer(["Astrid Lindgren","Jane Austen","Sylvia Plath"]))
console.log(comparer(["Hello","Hola","Hejsan"]))


console.log("Matching? " + matchChecker({name: "Steven", age: 53},{name: "Tamir", age: 54}))
console.log("Matching? " + matchChecker({name: "Klas", age: 54},{name: "Tamir", age: 54}))
console.log("Matching? " + matchChecker({name: "Steven", age: 54},{age: 54, name: "Tamir"}))
