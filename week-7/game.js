// Design Basic Game Solo Challenge
/*
// This is a solo challenge

// Your mission description: To hunt down the dragon that is flying around your town!
// Overall mission: To defeat the dragon and it's hatchlings.
// Goals: Kill dragon
		// get money
// Characters: Yourself, Dragon, Hatchling(s)
// Objects: Yourself, Dragon, Hatchling, rupee
// Functions: move(direction), attack, 

// Pseudocode
// Define a variable yourself, and set properties to it with the following:
	Health, position x, position y, weapon, coins

Define a variable Dragon with the following properties
Health, position x, position y, attack
Define a variable hatchling with the following properties
Health, position x, position y, weapon (hatchlings stats will be diminished version of dragon)
if the health property of dragon is 0, health and weapon of hatchling becomes dragon initial.

define a variable with the function move(direction)
LOG "Which direction do you want to go? (N, E, S, W)"
User inputs one of four direction to move.
this function will change the position of yourself variable accordingly
if position of yourself is same as dragon, run the function fight

define a variable with the function fight
LOG the string "You encounter a (dragon or hatchling)! what will you do? Attack (A) or Run (R)"
IF user inputs A, enemy variable will lose a random amount of health in a given range, and the player variable
will lose a random amount of health in a given range. 
ELSE IF user inputs R, call function move.
ELSE IF the dragon's health == 0 && the hatchling's health == 0, LOG (You win the game!)
//
//
//
*/
// Initial Code

var yourself = {
	health: 100
	position-x: Math.floor((Math.random() * 20) +1)
	position-y: Math.floor((Math.random() * 20) +1)
	attack: 10
}


var dragon = {
	health: 200
	position-x: Math.floor((Math.random() * 20) +1)
	position-y: Math.floor((Math.random() * 20) +1)
	attack: function(yourself[health] -= 5)
}

var hatchling1 = {
	health: 75
	position-x: Math.floor((Math.random() * 20) +1)
	position-y: Math.floor((Math.random() * 20) +1)
	attack: function(yourself[health] -= 3)
}

var hatchling2 = {
	health: 75
	position-x: Math.floor((Math.random() * 20) +1)
	position-y: Math.floor((Math.random() * 20) +1)
	attack: function(yourself[health] -= 3)
}

function move(dir){
	if dir == "N"
		yourself
}


// Refactored Code






// Reflection
//
//
//
//
//
//
//
//