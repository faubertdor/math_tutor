# Write program that takes values to an array and stops at negative value
# Arrays and Hashes
# Jean F. Dorancy
# Last modified: 11-16-15

# getArray returns an array 
def add_to_array(arr_pos = [])
 val = 1
 while (val >= 0)
    print "Enter a value: "
    val = gets.to_f
    if val >= 0
        arr_pos << val
    else
        puts "Negative value entered! Leaving..."
        puts "**********************************\n\n"
    end
 end
end

# Validate for Y/N
def yes_or_no?()
    print "Do you want to continue? "
    cond = gets.chomp
    while cond != 'y' or cond != 'Y' or cond != 'n' or cond != 'N'
      if cond == 'y' or cond == 'Y'
         return true
      elsif cond == 'n' or cond == 'N'
         return false
      end
      print "Please enter a valid choice: "
      cond = gets.chomp
    end
end

puts "\t *** Enter values to create a list and type a negative value to stop. *** \n\n"
arr_pos = []
add_to_array(arr_pos)
puts "The values entered are #{arr_pos}"
puts "This is the first element: #{arr_pos.first}"
puts "This is the last element: #{arr_pos.last}"
puts "The number of element in this array is: #{arr_pos.length}"
puts "**********************************\n\n"

# Add more to the array
if yes_or_no?
  puts "More values..."
  add_to_array(arr_pos)
else
  puts "Leaving..."
  puts "**********************************\n\n"
end

puts "The array with the newly entered values: #{arr_pos}"
puts "**********************************\n\n"

print "Search a value in the list: "
val = gets.to_f
if arr_pos.include?(val)
  puts "Element found! #{val} is included in the list."
else
  puts "Element not found! Sorry, #{val} is not included in the list."
end
puts "**********************************\n\n"
