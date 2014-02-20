def crazy_nums(max)
	result = []
	i = 3
	if max == 3
		return result
	end

	loop do
		if (i % 3 == 0) || (i % 5 == 0)
			if !((i % 3 == 0) && (i % 5 == 0))
				result<<i
			end
		end
		i = i + 1
		break if i == max	
	end

	return result
end

#puts crazy_nums(3)
#puts crazy_nums(5)
#puts crazy_nums(10)
#puts crazy_nums(15)
puts crazy_nums(20)