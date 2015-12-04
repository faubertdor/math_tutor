# Calculate the highest power of 2 for a max value
# Highest power of two
# Jean F. Dorancy
# Last modified: 11-13-2015

print "Enter a Maximum value: "
max = gets.to_i
count = 1
while count < max
  highest_power = count
  count *= 2
end
puts "The highest power of 2 less than #{max} is equal to #{highest_power}"
