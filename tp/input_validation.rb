# Input validation for Integer and Float.
# Validate user input
# Jean F. Dorancy
# Last modified: 11-13-15

print "Please enter an integer: "
#i = gets.chomp
while !i = gets.chomp.is_a?(Integer)
  print "Please enter an integer: "
end
puts "Congratulations, #{i} is an integer!"
  