# Shortest String

# I worked on this challenge [by myself, with: ].

# shortest_string is a method that takes an array of strings as its input
# and returns the shortest string
#
# +list_of_words+ is an array of strings
# shortest_string(array) should return the shortest string in the +list_of_words+
#
# If +list_of_words+ is empty the method should return nil

#Your Solution Below
def shortest_string(list_of_words)
	if list_of_words == []
		return nil
	elsif list_of_words == [" "]
		return " "
	else
		string_length = []
		list_of_words.each do |string|
			 string_length.push string.length
		end
		list_of_words.each do |string|
			if string_length.min == string.length
				return string
			end
		end

	end

end

shortest_string(['csdfadsafdsa', 'zzzzz', 'apples', 'aaaaaa', 'aaaaaaaaaaaaaaaaaaaaaaaaaaa'])
shortest_string(["aaaa", "aa", "sfdsdafdsafdsaf"])
