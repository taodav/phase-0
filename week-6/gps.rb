# Your Names
# 1)
# 2)

# We spent [#] hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, num_of_ingredients)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  # # set your library hash of item to make and number of ingredients
  # # iterate through the hash and minus 1 to the error counter if the value does not equal to the item to make value

 
 # if the error counter is greater than 0, raise an argument error
  # if error_counter > 0
  if !library.has_key?(item_to_make)
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end

  # set serving_size to value at corresponding key (item to make)
  serving_size = library[item_to_make]
  remaining_ingredients = num_of_ingredients % serving_size
  # set remaining_ingredients to the leftovers of num_of_ingredients

  # if the remaining ingredients is more than or equal to 5 and is a modulus of 5, 
  # then put "you can also make a cake"
  # if the remaining ingredients is also greater than or equal to 7, and is also a modulus
  # of 7, then put "you can also make a pie"

  suggested_items = "cookie "

  if remaining_ingredients >= 5
    suggested_items += "cake"
  end

  # if remaining_ingredients is 0, write calculation complete, or else put leftovers

  if remaining_ingredients == 0
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}"
  else
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make},
     you have #{remaining_ingredients} leftover ingredients. Suggested baking items: 
     #{suggested_items}"
  end
end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
# p serving_size_calc("THIS IS AN ERROR", 5)
p serving_size_calc("pie", 13)

#  Reflection
=begin
  
What did you learn about making code readable by working on this challenge?
I learnt that sometimes using more lines of code to make the program readable is sometimes
what we're looking for.

Did you learn any new methods? What did you learn about them?
Yes, I learnt about the has_key? method which returns true if a hash has a specified key.
I also learnt to put an exclamation mark before a method that returns a boolean if you want the opposite
result.

What did you learn about accessing data in hashes? 
I learnt that for finding a hash key/value, it's not necessary to iterate through the list - ruby has a lot
of built in methods for hashes.

What concepts were solidified when working through this challenge?
My concepts on refactoring were definitely solidified throughout this challenge - 
I never took refactoring too seriously, but it turns out there's a lot you can clear up in your code
if you refactor properly.
  
=end