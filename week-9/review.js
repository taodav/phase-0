/*
PSEUDOCODE

Create a new constructor called Grocery_list with the list parameter (initial list)
initialize the constructor by setting the list property of the constructor to itself
create instance methods by calling its prototype property and setting it's functions
in the prototype property.
Create the property function add_item with two parameters, item and quantity which pushes
the two parameters as properties in list.
Create a property function rm_item with one parameter, item, which removes the property
with the given parameter "item" 
Create a property function change_qty with two parameters, item and quantity, that updates the
item in the list with the new quantity.
Create a property function with no parameters, that logs the entire grocery list.


*/
// INITIAL SOLUTION
// var grocery_list = {};

// function add_item(item, quantity) {
// 	grocery_list[item] = quantity;
// }

// function rm_item(item) {
// 	delete grocery_list[item];
// }

// function change_qty(item, quantity){
// 	if (!grocery_list.hasOwnProperty(item)){
// 		console.log("This item isn't on the list!");
// 	}
// 	else {
// 		grocery_list[item] = quantity;
// 	}
// }

// function print_list() {
// 	console.log(grocery_list);
// }

// add_item("fish", 3)
// add_item("meat", 5)
// add_item("tofu", 2)
// print_list()
// rm_item("fish")
// print_list()
// change_qty("chicken", 2)
// print_list()
// change_qty("tofu", 6)
// print_list()

//REFACTORED SOLUTION


function Grocery_list(list){
	this.list = list;
}

Grocery_list.prototype = {
	add_item: function add_item(item, quantity) {
		this.list[item] = quantity;
	},
	rm_item: function rm_item(item1) {
		delete this.list[item1];
	},
	change_qty: function change_qty(item2, quantity2) {
		if (!this.list.hasOwnProperty(item2)) {
			console.log("This item isn't on the list! To add it onto your list, run the add_item function.");
			console.log(item2)
		}
		else {
			this.list[item2] = quantity2;
		}
	},
	print_list: function print_list() {
		console.log(this.list);
	},
}


var tuesday = new Grocery_list({"fish": 2, "meatballs": 20, "milk": 2})
tuesday.change_qty("fish", 3)
tuesday.print_list()

/*
REFLECTION

What concepts did you solidify in working on this challenge? (reviewing 
the passing of information, objects, constructors, etc.)

I solidified my understanding on constructors and the prototype property of constructors. It was a 
completely foreign concept to me before I went online and researched the topic.

What was the most difficult part of this challenge?

The most difficult part of the challenge was getting the referencing right for properties. I was
unfamiliar with how to reference newly created objects when using the constructor function, but
some research was all it took to comprehend prototype functions and self referencing. It's oddly similar
to ruby in terms of scope.

Did an array or object make more sense to use and why?

No, seeing as you had to keep track of how many of the objects you needed, an object with it's properties
made the most sense.

*/