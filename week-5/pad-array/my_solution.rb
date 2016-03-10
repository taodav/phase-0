# Pad an Array

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input?
# A hash, a number (number of objects in array), padding object
# What is the output? (i.e. What should the code return?)
# Padded array
# What are the steps needed to solve the problem?
# Count the number of objects in the array
# compare this number with min_size
# if min_size is smaller than array size, return array
# make a loop where you push nil to the end of the array until you have your 
# desired size
# if 'value' is given, push that instead.


# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
  array_size = array.size
  if array_size >= min_size
    return array
  else
    until array.size == min_size
      array.push(value)
    end
    p array
  end
end

pad!([1, 2], 3)

def pad(array, min_size, value = nil) #non-destructive
  array_size = array.size
  clone_array = Array.new(array)
  if array_size >= min_size
    return clone_array
  else
    until clone_array.size == min_size
      clone_array.push(value)
    end
    p clone_array
  end
end

# 4. Reflection

# Were you successful in breaking the problem down into small steps?

# Yes, we were. Our pseudocode was pretty stepwise in terms of breaking down the problem.

# Once you had written your pseudocode, were you able to easily translate it into code? What 
# difficulties and successes did you have?

# Yes, we were. The only difficulty we had was getting the pad method to return a non-destructive method.

# Was your initial solution successful at passing the tests? If so, why do you think that is? If 
# not, what were the errors you encountered and what did you do to resolve them?

# Our initial solution was not successful. This was because we made a destructive method instead of a
# non-destructive method. We had this error because we kept trying to find a method that was non-destructive
# instead of making a new array and using that array instead.

# When you refactored, did you find any existing methods in Ruby to clean up your code?

# Yes, we found quite a few ways to add values into our array to clean up the code - for example,
# the << method could've been used to insert the values into the array.

# How readable is your solution? Did you and your pair choose descriptive variable names?

# I think our solution was quite readable, and our variable names were also quite descriptive. I think
# using the word 'clone' is a bit questionable, because the new array we made was not a clone, but a 
# new array.

# What is the difference between destructive and non-destructive methods in your own words?

# Destructive methods change the original object, while non-destructive methods make a copy of the 
# object, changes the copy, and returns that.
