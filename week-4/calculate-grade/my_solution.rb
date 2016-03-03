# Calculate a Grade

# I worked on this challenge [by myself].


# Your Solution Below

def get_grade(avg)
	if avg <= 100 && avg >= 90
		p 'A'
	elsif avg < 90 && avg >= 80
		p 'B'
	elsif avg < 80 && avg >= 70
		p 'C'
	elsif avg < 70 && avg >= 60
		p 'D'
	elsif avg < 60 && avg >= 0
		p 'F'
	else
		p 'That\'s not a grade!'
	end
end

get_grade(93)
get_grade(74)
get_grade(57)
get_grade(34)
get_grade(13)
get_grade(102)
