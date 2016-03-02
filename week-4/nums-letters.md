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
