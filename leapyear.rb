puts "Enter start year: "
start = gets.to_i

puts "Enter end year: "
last = gets.to_i

if start > last
    puts "Invalid input: start year must be smaller than end year. Please try again."
end

result = 0
year = start

while year <= last
    if (year % 100 == 0)&&(year % 400 == 0)
        result+=1
        year+=1
    else
        if year % 4 == 0
            result+=1
            year+=1
        end
    year+=1
    end
end

puts "There are " + result.to_s + " leap year(s) between " + start.to_s + " and " + last.to_s + "."

