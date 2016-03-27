 // JavaScript Olympics

// I paired [by myself, with:] on this challenge.

// This challenge took me [#] hours.


// Warm Up




// Bulk Up

var athlete_1 = {
  name: "Usain Bolt",
  event: "100m dash",
}


var athlete_2 = {
  name: "Michael Phelps",
  event: "100m butterfly",
}

var athleteArray = [athlete_1, athlete_2];

function add_win(array) {
  for (var i = 0; i < array.length; i++) {
    console.log(array[i]["win"] = array[i]["name"] + " has won the " + array[i]["event"])
      //function () {
    }
      // array[i]["name"] + " has won the " + array[i]["event"])
}
  add_win(athleteArray)


// Jumble your words

var reverseString = function(string){
      console.log (string.split("").reverse().join(""))  
}

reverseString("How are you?")

// 2,4,6,8

function checkEven(num){
  return num % 2 == 0;
}

function even_only(array) {
  console.log(array.filter(checkEven));
}

even_only([1, 2, 3, 4, 5])


// "We built this city"

function Athlete(name, age, sport, quote) {
  this["name"] = name;
  this["age"] = age;
  this["sport"] = sport;
  this["quote"] = quote;
}

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)


// Reflection
/*

What JavaScript knowledge did you solidify in this challenge?

I solidified my understanding of variables, objects and classes - especially with the last challenge. 
It connected the dots between functions in Javascript and Classes in ruby.

What are constructor functions?

Constructor functions are like classes in ruby - in that you can make individual instances of them
much like instance variables that take on the attribute of classes.

How are constructors different from Ruby classes (in your research)?

Constructors are different from classes in that the functions in the constructor aren't available
to all instances of that constructor function, unlike ruby classes.

*/