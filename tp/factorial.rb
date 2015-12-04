# Take number from the user and calculate  the factorial
# Factorial
# Jean F. Dorancy
# Last modified: 11-10-2015

puts "Please enter a positive number: "
num = gets.to_i
count = 0
prod = 1
num.times do
  count += 1
  prod *= count
end
puts num.to_s + "! = " + prod.to_s