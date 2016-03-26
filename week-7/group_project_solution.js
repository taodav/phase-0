// // 1. As a user, I want to add up a large collection of numbers. 
// It should be able to give the sum of collections that contain both
// odd amounts of numbers and even amounts of numbers (say, collections of 7 numbers or of 8 numbers).$
// // 2. As a user, I want to find the average of a large collection of numbers. 
// I'm looking for the mean. Like before, it should be able to work with both 
// collections of odd amounts of numbers and even amounts of numbers.$
// // 3. As a user, I want to find the median number within a large collection of numbers. 
// It is the middle value between the smallest and largest values in the collection.
// Again, this must be done in both odd and even numbered collections.As

/*
PSEUDOCODE

USER 1: 
Create a VARIABLE equal to a FUNCTION that has the array of numbers as a parameter.
Call the method REDUCE on the parameter. REDUCE should have two parameters as well, a and b.
RETURN a + b in order to get the sum.

USER 2: 
Create a VARIABLE equal to a FUNCTION that has the array of numbers as a parameter.
Call the method REDUCE on the parameter. REDUCE should have two parameters as well, a and b.
RETURN a + b in order to get the sum. Divide the sum of the array with the LENGTH of the array.

USER 3:
Create a VARIABLE equal to a FUNCTION that has the array of numbers as a parameter.
Call the method SORT on the parameter array to sort the numbers from smallest to largest.
IF the MODULUS between the length of the array and 2 is equal to 0,
RETURN the average between the elements in the array with the indices ((array.length / 2 + 0.5) - 1) and
 ((array.length / 2 - 0.5) - 1).
ELSE, return the element in the array with the index ((array.length / 2) - 1)


*/