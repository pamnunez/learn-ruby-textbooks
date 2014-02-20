def sum(array)
	i = 0
	array.each do |j|
		i = i + j
	end
	return i
end

x = [1, 1, 1, 5]
puts sum(x)