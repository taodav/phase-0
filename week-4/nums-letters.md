What does puts do?

Puts prints the associated string and starts a new line afterwards.

What is an integer? What is a float?

An integer in ruby is a whole number without a decimal place. A float is a number with decimals. 

What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?

In float division, the float that is returned is always it's exact value (ie. 9.0/2.0 would return 4.5). But in integer division, since you're dividing two integers, the result is also an integer. So if you divided something that would normally return with a non-integer value, then the result would be the rounded down integer of the number (ie. 9/2 would return 4).

Release 2 mini challenge:
```
daysInAYear = 365
hoursInAYear = daysInAYear * 24

hoursInADecade = hoursInAYear * 10
minutesInADecade = hoursInADecade * 60

puts hoursInAYear
puts minutesInADecade
```

REFLECTION
How does Ruby handle addition, subtraction, multiplication, and division of numbers?

Addition, subtraction, multiplication and division are all methods in ruby. In order for Ruby to do any of these methods to two numbers, the numbers have to be integers and not strings. 

What is the difference between integers and floats?

Integers are whole numbers without decimals
Floats are numbers with decimals

What is the difference between integer and float division?

dividing integers always results in an integer rounded down.
dividing floats returns floats with the exact value.

What are strings? Why and when would you use them?

Strings are a group of characters put together between quotes in Ruby. Strings are useful for printing things out - if you want ruby to return a sentence, you'd use a string.

What are local variables? Why and when would you use them?

Variables are a name assigned to either a string, number, or boolean value. You would use them in place of the specific string, number or boolean value you assign to it.

How was this challenge? Did you get a good review of some of the basics?

This challenge was good at refreshing my memory in terms of the basics of Ruby - Although the rspec aspect was a bit foreign and not very well explained in terms of the scope in which we have to know it.

LINKS to exercises

https://github.com/taodav/phase-0/blob/master/week-4/nums-letters.md
https://github.com/taodav/phase-0/blob/master/week-4/simple-string.rb
https://github.com/taodav/phase-0/blob/master/week-4/basic-math.rb