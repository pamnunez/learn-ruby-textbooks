def is_prime?(num)
	if num == 1
		return true
	end
	if num == 2 
		return true
	end
	i = 2
	loop do 
		if num % i == 0
			return false
		end
		i = i + 1
		break if i > (num/2)
	end
	return true
end

puts is_prime?(8)
puts is_prime?(7)
puts is_prime?(113)
puts is_prime?(2)
puts is_prime?(3)

def primes(max)
	arr = []
	i = 1
	loop do
		if is_prime?(i)
			arr<<i
			i = i + 1
		else
			i = i + 1
		end
	break if i == max
	end
	return arr
end

# puts primes(12)
# puts primes(11)
puts [1, 2, 3, 5]