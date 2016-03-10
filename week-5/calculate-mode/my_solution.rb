# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 1. Initial Solution

=begin
def mode(array)
  hash = Hash.new(0)
  hash_max = Hash.new(0)
  array.each do |num|
    hash[num] += 1 
  end
  
  new_array = [] 
  hash_max = hash.max_by {|k,v| v}
  hash.each {|k,v| new_array << k}
  p new_array
end
=end

# 3. Refactored Solution

def mode(array)
  hash = Hash.new(0)
  hash_max = Hash.new(0)
  array.each do |num|
    hash[num] += 1 
  end
  
  new_array = [] 
  hash.each do |k,v| 
      if v == hash.values.max 
        new_array << k 
      end 
  end 
  p new_array
end

# 4. Reflection

# Which data structure did you and your pair decide to 
# implement and why?

# We decided to use iteration to put all the keys and values into
# a hash, then find the max values of the hash and put the key into
# the array that holds the max values.

# Were you more successful breaking this problem down 
# into implementable pseudocode than the last with a pair? 

# Yes, we were. After talking through our own though processes, we
# managed to make pseudocode that was helpful in our steps towards 
# making the working program.

# What issues/successes did you run into when translating 
# your pseudocode to code?

# The biggest problem we had was our pseudocode was a bit vague
# at some points, so we struggled a bit at some points in our coding.

# What methods did you use to iterate through the content? 
# Did you find any good ones when you were refactoring? Were 
# they difficult to implement?

# We used the max_by method for hashes that returns an array with the
# max key or value pair from the hash. But since it returned an array,
# we couldn't use the method. We mainly stuck with the most basic
# iteration technique - each. We also came across select, which I believe
# would have worked just as well in this situation.