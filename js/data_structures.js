var colors = ["green", "yellow", "pink", "black"];
var names = ["Joey", "Chandler", "Rachel", "Phoebe"];

console.log(colors);
console.log(names);

colors.push("purple");
names.push("Monica");

console.log(colors);
console.log(names);

var horses ={}
for (var i = 0; i < names.length; i++){
	horses[names[i]] = colors[i];
}

console.log(horses)