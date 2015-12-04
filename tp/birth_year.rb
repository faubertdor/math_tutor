# Find what year you was born
# Birth_year
# Jean F. Dorancy
# Last modified: 11-10-2015

puts "What is your name?"
name = gets.chomp
puts "How old are you?"
age = gets.to_i
puts name + " was born in " + (2015 - age).to_s
