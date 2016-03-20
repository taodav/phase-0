# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================
puts array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================
puts hash [:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================
puts nested_data [:array][1][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

number_array.map! do |element|
	if element.kind_of?(Array)
		element.map! {|e| e + 5}
	else 
		element + 5
	end
end
puts number_array


# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

startup_names.map! do |element|
	if element.kind_of?(Array)
		element.map! {|e| if e.kind_of?(Array) 
		e.map! {|a| a + "ly"} else e + "ly" end }
	else 
		element + "ly"
	end
end

puts startup_names
=begin
REFLECTION
What are some general rules you can apply to nested arrays?
Nested arrays can be called upon through successive square brackets

What are some ways you can iterate over nested arrays?
They can be iterated through using the condition 'if the iterated element is an array...'


Did you find any good new methods to implement or did you re-use one you 
were already familiar with? What was it and why did you decide that was a good option?
We reused mostly familiar statements, but also used map!, which is somewhat more foreign to
me. We used map! because it's a destructive method.

=end