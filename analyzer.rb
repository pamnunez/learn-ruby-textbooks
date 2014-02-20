# analyzer.rb -- Text analyzer

# initial values and file read
stopwords = %w{the a by on for of are with just but and to the my in I has some}
lines = File.readlines(ARGV[0]) 
line_count = lines.size
text = lines.join

# Count the characters
total_characters = text.length
total_characters_nospaces = text.gsub(/\s+/, "").length

# Count words, sentences, paragraphs
word_count = text.split.length
sentence_count = text.split(/\.|\?|!/).length
paragraph_count = text.split(/\n\n/).length

# Make a list of words in text that aren't stop words
# count them, calculate perecentage of non-stop against all words
all_words = text.scan(/\w+/)
good_words = all_words.select { |word| !stopwords.include?(word) }
good_percentage = ((good_words.length.to_f / all_words.length.to_f) * 100).to_i

# Summarize the text by selecting one third of all sentences, based
# on their length. Longer sentences are presumed to be more important
sentences = text.gsub(/\s+/, ' ').strip.split(/\.|\?|!/)
sentences_sorted = sentences.sort_by { |sentence| sentence.length }
one_third = sentences_sorted.length / 3
ideal_sentences = sentences_sorted.slice(one_third, one_third + 1)
ideal_sentences = ideal_sentences.select { |sentence| sentence =~ /is|are/ }

# Report statistics to user
puts "#{line_count} lines"
puts "#{total_characters} characters"
puts "#{total_characters_nospaces} characters (excluding spaces)"
puts "#{word_count} words"
puts "#{sentence_count} sentences"
puts "#{paragraph_count} paragraphs"
puts "#{sentence_count / paragraph_count} sentences per paragraph (average)"
puts "#{word_count / sentence_count} words per sentence (average)"
puts "#{good_percentage}% of words are important words"
puts "Summary:\n\n" + ideal_sentences.join(". ")
puts "-- End of analysis"

