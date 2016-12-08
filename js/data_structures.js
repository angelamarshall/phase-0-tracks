var colors = ["blue", "green", "red", "orange"];
var horse_names = ["Black Beauty", "Secrtariat", "Seabiscuit", "My Little Pony"];

colors.push("purple");
horse_names.push("Mr. Ed");


var assignments = {};
for(var i=0, l=horse_names.length; i<l; i++){
  assignments[horse_names[i]] = colors[i];
}

assignments["Black Beauty"];

console.log(assignments)





var car = {model: 'civic', make: 'honda', year: 2016}

function Car(model, make, year) {
	console.log ("The brand new:", this);

this.model = model;
this.make = make;
this.year = year;

this.vroom = function() { console.log("Vroom,vroom!"); };

}

var newCar = new Car ("crv", "honda", 2012)
console.log(car)
console.log(newCar)
newCar.vroom()