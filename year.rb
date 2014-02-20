=begin
puts "There are " + (365 * 24).to_s + " hours in a year.\n"

puts "Our dear author is " + (1025000000 / 3600 / 24 / 365).to_s + " years old.\n\n"


puts "What is your full name?"
name = gets.chomp
puts "Did you know there are " + name.gsub(/\s+/, "").length.to_s + " characters"
puts "in your name, " + name + "?"

puts "What is your first name? "
first = gets.chomp
puts "What is your middle name? "
middle = gets.chomp
puts "What is your last name?"
last = gets.chomp
puts "Hello, nice to meet you " + first + " " + middle + " " + last + "!"

puts "What is your favorite number? "
num = gets.chomp
num = num.to_i + 1
puts "Screw you, " + num.to_s + " is better."

puts "What do you want? Make it quick!"
question = gets.chomp
puts "WHATDDAYA MEAN \"" + question.upcase + "\"?!?! YOU'RE FIRED!!"
=end
=begin
linewidth = 60
puts "Table of Contents".center(linewidth)
puts "Chapter 1:  Getting Started".ljust(linewidth/2) + "page 3".rjust(linewidth/2)
puts "Chapter 1:  Numbers".ljust(linewidth/2) + "page 11".rjust(linewidth/2)
=end

page_width = 60
chapters = ["Chapter 1: Getting Started","Chapter 2: Numbers","Chapter 3: Letters"]
page = ["page 1", "page 9", "page 13"]
array = chapters + page
puts array

puts ('Table of Contents'.center(page_width))
puts ''

array.each do |info|
puts ('Chapter 1: Getting Started'.ljust(page_width/2) + 'page 1'.rjust(page_width/2))
puts ('Chapter 2: Numbers'.ljust(page_width/2) + 'page 9'.rjust(page_width/2))
puts ('Chapter 3: Letters'.ljust(page_width/2) + 'page 13'.rjust(page_width/2))

=begin
puts "Hello, what's your name?"
name = gets.chomp
puts "Hello, " + name + "."

if name == "Tom"
	puts "What a lovely name!"
end

puts "\nI am a fortune-teller. Tell me your name: "
name = gets.chomp

if name == "Chris"
	puts "I see great things in your future.\n\n"
else
	puts "Your furtue is... oh my! Look at the time!"
	puts "I really have to go, sorry!\n\n"
end

puts "Hello, and welcome to seventh grade English."
puts "My name is Mrs. Gabbard. And your name is...?"
name = gets.chomp

if name == name.capitalize
	puts "Please take a seat, " + name + "."
else
	puts name + "? You mean " + name.capitalize + ", right?"
	puts "Don't you even know how to spell your name?"
	reply = gets.chomp
	
	if reply.downcase == "yes"
		puts "Hmmph! Well sit down!"
	else
		puts "GET OUT!!"
	end
end

num = 99
while num > 0
	if num > 1 || num == 0
		puts num.to_s + " bottles of beer on the wall, " + num.to_s + " bottles of beer, you take one down, pass it around, " + (num-=1).to_s + " bottles of beer on the wall!\n"
	else puts num.to_s + " bottle of beer on the wall, " + num.to_s + " bottle of beer, you take one down, pass it around, " + (num-=1).to_s + " bottles of beer on the wall!\n" 
	end 
end 


puts "What do you need to say to grandma?"
ask = gets.chomp
while ask != "BYE" 
    if ask == ask.upcase
		puts "NO, NOT SINCE " + (rand(20)+1930).to_s  + "!"
		ask = gets.chomp
	elsif ask != ask.upcase
		puts "HUH?! SPEAK UP, SONNY!"
		ask = gets.chomp
	end
end
=end

