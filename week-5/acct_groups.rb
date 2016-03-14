#Initial solution
def acct_group(list)
	hash = Hash.new(0)
	group = list.split(" ")
	group_num = 1
	if group
	group.each do |name|
		hash[name] = group_num
		#if the number of people in the group is divisible by 5
		#then +1 to group_num
		if hash.length % 5 == 0
			group_num += 1
		end
	end
	num_last = 0
	# Counts the number of people in the last group
	hash.each do |k,v|
		if v == group_num
			num_last += 1
		end
	end
	# if the number of people in the last group is less than four

	if num_last == 3
		num_more = hash.to_a.at(0)
		num_more[1] = group_num
		new_hash = Hash[*num_more]
		hash.merge!(new_hash)
		p "SHIEETT"
	elsif num_last == 2
		num_more = hash.to_a.at(0) + hash.to_a.at(5)
		num_more[1] = group_num
		num_more[3] = group_num
		new_hash = Hash[*num_more]
		hash.merge!(new_hash)
		p "CHECK"
	elsif num_last == 1
		num_more = hash.to_a.at(0) + hash.to_a.at(5) + hash.to_a.at(10)
		num_more[1] = group_num
		num_more[3] = group_num
		num_more[5] = group_num
		new_hash = Hash[*num_more]
		hash.merge!(new_hash)
		p "UHUH"
	end
	p Hash[hash.sort_by{|k,v| v}]
end

acct_group("David Grace Aleks Ruoshan Liam Andrew Robert Jonas Conrad Kotachi Snakehips")

#Refactored solution


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