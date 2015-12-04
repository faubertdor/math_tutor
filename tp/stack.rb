# Chapter 4 about modules and program organization
# Class Stack, related to data structure
# Jean F. Dorancy
# Last modified: 11-11-2015

require_relative "stacklike"
class Stack
    include Stacklike
end

#Main code
stack_of_items = Stack.new
stack_of_items.add_to_stack("item one")
stack_of_items.add_to_stack("item two")
stack_of_items.add_to_stack("item three")
puts "Items currently on stack:"
puts stack_of_items.stack
taken = stack_of_items.take_from_stack
puts "Back on stack..."
puts "#{taken} was taken from stack!"
puts stack_of_items.stack