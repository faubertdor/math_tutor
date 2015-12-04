# Write program that take two words and print them in opposite order
# Jean F. Dorancy
# Last modified: 11-10-2015

print "Please type a first word: "
word1 = gets.chomp
print "Please type another word: "
word2 = gets.chomp
puts "This is the second word: " + word2
puts "This is the first word: " + word1
puts "The equivalent reserve of them is " + word1.reverse + word2.reverse