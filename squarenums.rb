def square_nums(max)
	result = 1
	i = 4
	root = 2
	if max <= 4
		return result
	end

	loop do
		loop do
			if (root * root) == i
				result = result + 1
			end
			root = root + 1
			break if root == i
		end
		root = 2
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