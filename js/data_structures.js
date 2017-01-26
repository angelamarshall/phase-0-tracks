var colors = ["blue", "green", "red", "orange"];
var horse_names = ["Black Beauty", "Secretariat", "Sea Biscuit", "My Little Pony"];

colors.push("purple");
horse_names.push("Mr. Grey");


var assignments = {};
for(var i=0, l=horse_names.length; i<l; i++){
  assignments[horse_names[i]] = colors[i];
}

//assignments["Black Beauty"];

console.log(assignments);



var car = {model: 'Wrangler', make: 'Jeep', year: 2016}

function Car(model, make, year) {
	console.log ("Our new vehicle:", this);

this.model = model;
this.make = make;
this.year = year;

this.vroom = function() { console.log("Vroom, vroom!"); };

console.log("CAR INITIALIZATION COMPLETE");
}

var newCar = new Car ("Liberty", "Jeep", 2012)
console.log(car)
console.log(newCar)
newCar.vroom()