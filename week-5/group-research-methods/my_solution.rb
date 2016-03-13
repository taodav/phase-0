 #Research Methods

# I spent [1] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  output = []
  source.each do |word| 
    if word.to_s.include?(thing_to_find)
      output << word
    end
  end
  p output
end

def my_hash_finding_method(source, thing_to_find)
  output = []
  source.each do |key,value|
    if value == thing_to_find
      output << key
    end
  end
  p output
end


# Identify and describe the Ruby method(s) you implemented.
# .include? - returns true if string contains given string or character
# Its a very simple method, just remember that if you need to do anything after
# you find if the character is included you need to have another method to do that
# because you are just returning a true or a false.

# # Person 2
def my_array_modification_method!(source, thing_to_modify)
  array = []
  source.each do |item|
    if item.is_a? Integer 
      array << item + thing_to_modify
    else
      array << item
    end
  end
  p array
  return array
end

my_array_modification_method!(i_want_pets, 1)

def my_hash_modification_method!(source, thing_to_modify)
  source.each {|key, value| source[key] = value + thing_to_modify }
  p source
  return source
end

my_hash_modification_method!(my_family_pets_ages, 2)

# Release 1: Identify and describe the Ruby method(s) you implemented.
# .each Calls the given block once for each element of an object, passing that element as a parameter.
# .is_a? Returns true if class is the class of object.
# << Pushes the given object on to the array.
# + Appends a specified object to the elements.

# Person 3
def my_array_sorting_method(source)
  integer_array = []
  string_array = []
  source.each do |x| 
  if x.is_a?(Integer)
     integer_array << x
  else
     string_array << x
  end
end
  integer_array.sort.concat(string_array.sort)
end

my_array_sorting_method(i_want_pets)



def my_hash_sorting_method(source)
  source.sort_by {|pet, age| age}
end

my_hash_sorting_method(my_family_pets_ages)
# Identify and describe the Ruby method(s) you implemented.
# is_a? - This is a test to determine what class an element is. I used it to check if an element was an integer in order to split up the integers and strings.
# each - An iterator that checks each element of an array.
# sort - Organizes the elements of an container (generally alphabetically or numerically)
# concat - short for concatenate, concat destructively combines two arrays into one.
# sort_by - similar to sort, sort_by allows you to choose what specific element you want to sort by. In this case, values of a hash.


# Person 4

def my_array_deletion_method!(source, thing_to_delete)
  source.delete_if {|item| item.include?(thing_to_delete)}
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.delete(thing_to_delete)
  p source
end

# Identify and describe the Ruby method(s) you implemented.
# The two methods I used were delete_if and delete. They're pretty self explanatory:
# delete_if will delete an item if a certain condition is met. That condition is input in the code block
# following the method.
# delete (the hash method) will delete an object (the one with the pertaining key) if the variable inside 
# the delete method matches a key.

# Person 5
def my_array_splitting_method(source)
  # Create two empty arrays for integers and strings, and one called my_array
  integers = []
  strings = []
  my_array = []
  # Iterate through the source array, test whether element is an integer, and, if so, add to integers array; otherwise, add to strings array
  source.each do |x|
    if x.is_a? Integer
      integers << x
    else
      strings << x
    end
  end
  # Push both arrays into my_array
  my_array << integers
  my_array << strings
  source = my_array
end

def my_hash_splitting_method(source, age)
  # Make two empty arrays, youth for ages up to 4, adult for ages over 4
  youth = []
  adult = []
  # Make an empty array, age_groups
  age_groups = []
  # From the source hash, select key:values with value 4 or less and set them equal to youth hash
  # Do the same for adult hash
  youth_h = source.select {|k, v| v <= 4}
  adult_h = source.select {|k, v| v > 4}
  # Convert both hashes to arrays, and push them into age_groups array
  age_groups << youth_h.to_a
  age_groups << adult_h.to_a
  source = age_groups
end
# Identify and describe the Ruby method(s) you implemented.
# each: to iterate through the source array
# is_a? Integer: to determine whether element is an integer
# push: to add elements to arrays
# select: to select certain key:value pairs in a hash


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
# I assume everyone's familiar with the methods each and push. I'll briefly explain two new methods I learned about.
# *is_a? Integer*: This method determines whether an object belongs to a particular. In this case, I used Integer to weed out all the objects that weren't integers. I could have used is_a? String instead to separate out the strings from the integers.
# *select*: This method iterates through a hash. It evaluates each key:value pair to see if it meets a certain condition. In this case, I used select to check each dog's age and select those that were 4 or younger, then older than 4.
