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

//


function Car(type, color, fast) {
	console.log("Our new car:", this);

	this.type = type;
	this.color = color;
	this.fast = fast;

	this.honk = function() { console.log("HONK!"); };
	
	console.log("CAR INITIALIZATION COMPLETE");
}

console.log("Let's build a car ...");

var anotherCar = new Car("Volvo", "red", false);
console.log(anotherCar)
console.log("Our car can honk:");
anotherCar.honk();
console.log("----");

console.log("Let's build another car ...");
var yetAnotherCar = new Car("Lamborgini", "black", true);
console.log(yetAnotherCar.type);
console.log("This new car can honk, too:");
yetAnotherCar.honk();
console.log("----")