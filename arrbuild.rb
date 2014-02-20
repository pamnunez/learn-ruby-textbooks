puts "Please enter your words: "
input = gets.chomp
words = []

while input != ""
    words.push(input)
    input = gets.chomp
end

puts "Here are your words in alphabetical order:\n" + words.sort.join(", ")

