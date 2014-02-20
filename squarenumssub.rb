def square_nums(max)
	result = 0
	i = 4
	root = 2
	if max < 4
		return 1
	end

	loop do
		while root < i #I'm trying here to determine if i is a perfect square.
			if (root * root) == i
				result = result + 1 #If it is, then the result should increment.
			end #I'm getting an infinite loop and I cannot tell why, as I'm not changing i, so the root < i condition should trigger...
			puts result
			root = root + 1
			puts root
		end
		#root = 2
		i = i + 1
		break if i == max
	end
	return result
end

puts square_nums(3)
puts square_nums(4)
puts square_nums(5)
puts square_nums(10)
puts square_nums(25)