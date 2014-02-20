def pow(base, exponent)
	i = base 
	exponent.times do i * base
	end
	return i
end