# Find the ASCII order or a given character for given interval
# ASCII Order
# Jean F. Dorancy
# Last modified: 11-13-2015

print "Please enter a character: "
ch = gets.chomp
if ch < "0"
  puts "#{ch} lies before \"0\"."
elsif ch < "A" and ch > "9"
  puts "#{ch} lies between \"A\" and \"9\"."
elsif ch < "a" and ch > "Z"
  puts "#{ch} lies between \"a\" and \"Z\"."
elsif ch > "z"
  puts "#{ch} lies after \"z\"."
else
  puts "#{ch} is not in any of the intervals."
end
