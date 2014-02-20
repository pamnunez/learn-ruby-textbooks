def pow(base, exponent)
	i = base 
	(exponent-1).times do 
		i = i * base
	end
	return i
end

puts pow(2, 3)
puts 7/2