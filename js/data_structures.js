// pairing between Sierra McLawhorn & Nichole Burton

var colors = ["blue", "red", "purple", "yellow"];
var names = ["Carla", "Mary", "Bob", "Clifton"];

colors.push("pink");
names.push("Timmy");

for (var i = 0; i < names.length; i++) {
  var name = names[i];
  var color = colors[i];
  var name = color;
 /* console.log(name) */
}

function Car(color, make, model) {
  this.color = color;
  this.make = make;
  this.model = model;

  this.oilChange = function() { console.log("We changed the oil"); };
}

var car = new Car("blue", "Honda", "Civic");
console.log(car);
car.oilChange();
var car2 = new Car("pink", "Kia", "Soul");
console.log(car2);
car2.oilChange();
