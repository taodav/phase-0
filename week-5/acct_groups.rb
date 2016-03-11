#Initial solution
def acct_group(list)
	hash = Hash.new(0)
	group = list.split(" ")
	group_num = 1

	group.each do |name|
		hash[name] = group_num
		#if the number of people in the group is divisible by 5
		#then +1 to group_num
		if hash.length % 5 == 0
			group_num += 1
		end
	end
	num_last = 0
	hash.each do |k,v|
		if v == group_num
			num_last += 1
		end
	end
	dif_num = 1
	if num_last < 4
		hash.each do |k,v|
			if v == group_num
				v = group_num.to_i - dif_num
				dif_num += 1
			end
		end
	end
	p hash
end

acct_group("David Grace Aleks Ruoshan Liam Andrew Robert Jonas Conrad Kotachi Snakehips King Bryson")

=begin
	
REFLECTION
What was the most interesting and most difficult part of this challenge?

The most difficult part of this challenge was definitely getting the size of the groups right.

Do you feel you are improving in your ability to write pseudocode and break the problem down?

Yes, I feel like with added complexity more pseudocode is needed in order to organize your thoughts better.

Was your approach for automating this task a good solution? What could have made it even better?

I think my solution is still lacking a bit - mainly because the default number of people in the groups is 4 and not 5.

What data structure did you decide to store the accountability groups in and why?

I decided to use a hash - because it can store both the name and the group number.

What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?

Yes! I learnt how to use a few more hash methods through research on the solution.
	
=end