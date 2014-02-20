def crazy_sum(numbers)
	i = 0
	sum = 0
	numbers.each do |j|
		sum = sum + (j * i)
		i = i + 1
	end
	return sum
end

puts crazy_sum([2, 3])
puts crazy_sum([2, 3, 5])
puts crazy_sum([2, 3, 5, 2])