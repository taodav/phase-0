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

// var yourself = {
// 	health: 100,
// 	"position x": 1,
// 	// Math.floor((Math.random() * 20) +1),
// 	"position y": 1,
// 	// Math.floor((Math.random() * 20) +1),
// }

// var enemies = {
// 	dragon: {
// 		health: 150,
// 		"position x": 2,
// 		// Math.floor((Math.random() * 20) +1),
// 		"position y": 2,
// 		// Math.floor((Math.random() * 20) +1),
// 	}
// }

// function move(dir){
// 	if (dir == "N"){
// 		if (yourself["position y"] >= 20) {
// 			console.log("You've reached the north border! Head the other way!") }
// 		else{
// 			yourself["position y"] += 1}}
// 	else if (dir == "E"){
// 		if (yourself["position x"] >= 20) {
// 			console.log("You've reached the east border! Head the other way!") }
// 		else{
// 			yourself["position x"] += 1} }
// 	else if (dir == "S"){
// 		if (yourself["position y"] >= 20) {
// 			console.log("You've reached the south border! Head the other way!") }
// 		else{
// 			yourself["position y"] -= 1} }
// 	else if (dir == "W"){
// 		if (yourself["position x"] >= 20) {
// 			console.log("You've reached the west border! Head the other way!") }
// 		else{
// 			yourself["x"] -= 1} }
// 	else {
// 		move(prompt("That's not a valid move... try again!"))
// 	}
// 	console.log("You are currently at N" + yourself["position y"] + "E" + yourself["position x"])
// 	console.log("Dragon currently at N" + enemies["dragon"]["position y"] + "E" + enemies["dragon"]["position x"])

// 	if (enemies.dragon["position y"] == yourself["position y"] && enemies.dragon["position x"] == yourself["position x"]) {
// 		var choice = prompt("You've encountered the dragon! What do you want to do? (Attack or Move")
// 			if (choice == "Attack" || "attack"){
// 				attack()
// 			}
// 			else if (choice !== "Attack" || "attack"){
// 				move(prompt("where do you want to go? (N, E, S, W)"))
// 			}
// 	}
// 	else {
// 		move(prompt("where do you want to go? (N, E, S, W)"))
// 	}
// }

// function attack() {
// 	console.log("You swing at the dragon")
// 	var swing = Math.random()
// 		if (swing <= 0.8){
// 			enemies.dragon.health -= 10
// 			console.log("The dragon has " + enemies.dragon.health + " health left!")
// 		}
// 		else {
// 			console.log("You swung your mighty sword but missed the sneaky dragon!")
// 		}
// 	console.log("The dragon snaps his jaws and attempts to bite you!")
// 	var bite = Math.random()
// 		if (bite <= 0.6){
// 			yourself.health -= 10
// 			console.log("You have " + yourself.health + " health left!")
// 		}
// 		else {
// 			console.log("You rolled to the side and avoided the dragon's mandibles!")
// 		}
// 	if (enemies.dragon.health == 0) {
// 		console.log("The dragon has been defeated. Congratulations! You won!")
// 		return
// 	}
// 	else if (yourself.health == 0) {
// 		console.log("You've been defeated by the dragon. Game over!")
// 		return
// 	}
// 	var after_attack = prompt("Will you swing again or run away? (Attack or Move)")
// 	if (after_attack == "Attack" || "attack"){
// 		attack()
// 	}
// 	else if (after_attack !== "Attack" || "attack") {
// 		move(prompt("where do you want to go? (N, E, S, W)"))
// 	}
// }

// move(prompt("where do you want to go? (N, E, S, W)"))


// Refactored Code

var yourself = {
	health: 100,
	"position x": 1,
	// Math.floor((Math.random() * 20) +1),
	"position y": 1,
	// Math.floor((Math.random() * 20) +1),
}

var enemies = {
	dragon: {
		health: 150,
		"position x": 1,
		// Math.floor((Math.random() * 20) +1),
		"position y": 3,
		// Math.floor((Math.random() * 20) +1),
	},

	babyDragon: {
		health: 50,
		"position x": 1,
		// Math.floor((Math.random() * 20) +1),
		"position y": 2,
		// Math.floor((Math.random() * 20) +1),
	}
}

function move(dir){
	if (dir == "exit"){
		return
	}
	if (dir == "n"){
		if (yourself["position y"] >= 20) {
			console.log("You've reached the north border! Head the other way!") }
		else{
			yourself["position y"] += 1}}
	else if (dir == "e"){
		if (yourself["position x"] >= 20) {
			console.log("You've reached the east border! Head the other way!") }
		else{
			yourself["position x"] += 1} }
	else if (dir == "s"){
		if (yourself["position y"] >= 20) {
			console.log("You've reached the south border! Head the other way!") }
		else{
			yourself["position y"] -= 1} }
	else if (dir == "w"){
		if (yourself["position x"] >= 20) {
			console.log("You've reached the west border! Head the other way!") }
		else{
			yourself["x"] -= 1} }
	else if (dir !== "n" || dir !== "e" || dir !== "s" || dir !== "w"){
		var direction_1 = prompt("That's not a valid move... try again!")
		move(direction_1.toLowerCase())
	}
	console.log("You are currently at N" + yourself["position y"] + "E" + yourself["position x"])
	console.log("Dragon currently at N" + enemies["dragon"]["position y"] + "E" + enemies["dragon"]["position x"])

	if (enemies.dragon["position y"] == yourself["position y"] && enemies.dragon["position x"] == yourself["position x"]) {
		var choice = prompt("You've encountered the dragon! What do you want to do? (Attack or Move")
			if (choice == "Attack" || choice == "attack"){
				attack()
			}
			else {
				move(prompt("where do you want to go? (N, E, S, W)"))
			}
	}
	else {
		var direction = prompt("where do you want to go? (N, E, S, W)")
		move(direction)
	}
}

function attack() {
	console.log("You swing at the dragon")
	var swing = Math.random()
		if (swing <= 0.8){
			enemies.dragon.health -= 10
			console.log("The dragon has " + enemies.dragon.health + " health left!")
		}
		else {
			console.log("You swung your mighty sword but missed the sneaky dragon!")
		}
	console.log("The dragon snaps his jaws and attempts to bite you!")
	var bite = Math.random()
		if (bite <= 0.6){
			yourself.health -= 10
			console.log("You have " + yourself.health + " health left!")
		}
		else {
			console.log("You rolled to the side and avoided the dragon's mandibles!")
		}
	if (enemies.dragon.health <= 0) {
		console.log("The dragon has been defeated. Congratulations! You won!")
		return
	}
	else if (yourself.health <= 0) {
		console.log("You've been defeated by the dragon. Game over!")
		return
	}
	var after_attack = prompt("Will you swing again or run away? (Attack or Move)")
	if (after_attack == "attack"){
		attack()
	}
	else {
		move(prompt("where do you want to go? (N, E, S, W)"))
	}
}

move(prompt("Which direction are we going? (N, E, W, S)").toLowerCase())


// Reflection
/*
What was the most difficult part of this challenge?

The most difficult part of this challenge was debugging. Half the time I feel like getting this
game to work was just pure luck - if it worked it was with a bit of luck!

What did you learn about creating objects and functions that interact with one another?

I learnt that Javascript has a lot of different syntaxes used for calling different properties
or variables.

Did you learn about any new built-in methods you could use in your refactored solution? If 
so, what were they and how do they work?

I solidified my knowledge on the prompt method, and used the prompt method in order to get arguments for
my functions. I also tried to factor in 	

How can you access and manipulate properties of objects?
*/