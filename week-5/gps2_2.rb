# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # Make a method
  # separate items
  # put them into hash as keys
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: A hash

$grocery_list = Hash.new(0)

def list(string)
	split_string = string.split(" ")
	split_string.each do |item|
		$grocery_list[item] = 1
	end
	p $grocery_list
end

list("carrots apples cereal pizza")

# my_list = 

# Method to add an item to a list
# input: item name (string) and optional quantity (integer)
# steps: Make a method with two parameters, item and quantity.
# Add item and quantity as a key value pair to the hash
# output: hash

def add_item(item_name, quantity)
  $grocery_list[item_name] = quantity
  return $grocery_list
end

add_item("carrots", 3)

# Method to remove an item from the list
# input: name of item to delete
# steps: define a method "delete"
# delete key/value pair
# print resulting hash
# output: hash without deleted item

def del_item(item_name)
	$grocery_list.delete(item_name)
	p $grocery_list
end

del_item("carrots")

# Method to update the quantity of an item
# input: grocery_item and quantity
# steps:
#Define a method that takes the grocery_item (string) and the quantity (integer)
#push the new quantity into the hash
#print the hash
# output:Hash with updated quantities.

def new_list(item_name, quantity)
  $grocery_list[item_name] = quantity
  return $grocery_list
end

new_list("pizza", 2)

# Method to print a list and make it look pretty
# input: our grocery list
# steps: print "This is what we need for this week"
# iterate through list and print out every key/value pair
# output: finalized list

def print_list
	$grocery_list.each do |k,v|
		p "We need #{v} #{k}"
	end
end

print_list

# Reflection

# What did you learn about pseudocode from working on this challenge?

# I learnt about how you should always put input and output for your methods in pseudocode.

# What are the tradeoffs of using Arrays and Hashes for this challenge?

# Arrays are easier to use because you only have one level of object in the array. But this restricts
# your ability to call upon them with unique names. Hashes give you that ability, but you have to deal
# with key/value pairs, which can be quite annoying.

# What does a method return?

# A method returns the value that you ask it to return. In this case, it would've been a hash with
# the groceries in it.

# What kind of things can you pass into methods as arguments?

# You can pass any object into a method as a parameter. From booleans to floats to integers to true/false 
# to nils.

# How can you pass information between methods?

# You can pass information between methods using a global variable that allows all methods to
# use the variable.

# What concepts were solidified in this challenge, and what concepts are still confusing?

# The concept of hashes definitely solidified in this challenge. But hash transformations are still
# a bit confusing - I'm still missing some knowledge on how to change hashes.
