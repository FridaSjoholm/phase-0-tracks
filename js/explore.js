//pseudocode: reverse word
// Iterate through string in reversed order, from back to front and  for each new letter, 
//add it to string for reversed reversed word


var reversed_string = ""



console.log("give us a word, please!")
var original_word = gets.chomp

for (var i = original_word.length-1; i >= 0; i-=1){
	reversed_string += original_word[i]
}

console.log(reversed_string)