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

//arrBuilder
//Function takes number of words wanted in array as input. First theing we do is to build a loop that 
// will continue looping until we've made as many words as wanted, and placed them in an array. For each 
//word we will then make a random number beween 1-10 that will be length of word, then another loop creating
//as many lettes as wanted and placing them in the word variable. We choose letters by getting a random number between
//0 and 25, and using that random number as index in a string with letters. Finally we return the array with words.


function comparer(stringArray){
	var longest = "";
	for (var i = 0; i < stringArray.length; i++){
		if (stringArray[i].length> longest.length){
			longest = stringArray[i];
		}
	}
	return longest;
}

function matchChecker(obj1, obj2){
	var keys1 = Object.keys(obj1);
	var keys2 = Object.keys(obj2);

	for (var i = 0; i < keys1.length; i++){
		for (var j = 0; j <keys1.length; j++){
			if (keys1[i] == keys2[j]){
				if (obj1[keys1[i]] == obj2[keys2[j]]){
					//console.log(keys1[i] + " = " + obj1[keys1[i]] + " is the same as " + keys2[j]  +" = " + obj2[keys2[j]])
					return true;
				}
			}
		}
	}
	return false;
}


function arrBuilder(qty){
	arr= [];
	letters= "abcdefghijklmnopqrstuvwxyz";
	for (var i = 0; i < qty; i++){
		var word = "";
		var wordLength = Math.floor((Math.random() * 10) + 1);
		for (var j = 0; j < wordLength; j++){
			word += letters[Math.floor(Math.random() * 26)];
		}
		arr.push(word);
	}
	return arr;
}


console.log(comparer(["long phrase","longest phrase","longer phrase"]));
console.log(comparer(["Astrid Lindgren","Jane Austen","Sylvia Plath"]));
console.log(comparer(["Hello","Hola","Hejsan"]));


console.log("Matching? " + matchChecker({name: "Steven", age: 53},{name: "Tamir", age: 54}));
console.log("Matching? " + matchChecker({name: "Klas", age: 54},{name: "Tamir", age: 54}));
console.log("Matching? " + matchChecker({name: "Steven", age: 54},{age: 54, name: "Tamir"}));

for (i = 0; i < 10; i++){
	var arrToPrint = arrBuilder(Math.floor((Math.random() * 10) + 1));
	console.log("---------------------------------------------------------" + (i+1))
	console.log("We very ramdomly created these words: " + arrToPrint);
	console.log("And this is the longest word in the array: " + comparer(arrToPrint))
}

