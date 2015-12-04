# Ask the user for a sentence and a number. Print the sentence backwards that many times
# Number Times a Sentence
# Jean F. Dorancy
# Last modified: 11-10-2015

puts "Please type a sentence:"
sentence = gets.chomp
print "Please type a number: "
num = gets.to_i
num.times do
  puts sentence.reverse
end
puts "\t ==== End of the Story ===="