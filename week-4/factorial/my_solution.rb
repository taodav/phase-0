# Factorial

# I worked on this challenge [by myself, with: ].


# Your Solution Below

def factorial(number)
# Variable equal to a number first
i = number
list = []
	while i != 0
		list.push(i)
		i = i - 1
	end
# put all your numbers into an array
puts "the factorial of that number is:"
p list.inject(1) {|product, n|
	product*n
}
end

print factorial(5)