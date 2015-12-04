# Chapter 4 about modules and program organization
# Method lookup
# Jean F. Dorancy
# Last modified: 11-19-2015

module M
    def report
        puts "'report' method in module M."
    end
end
class C
  #prepend M is used to prioritize the module in the method lookup path
  include M
  def initialize
    puts "Instance of class 'C'"
  end
end
class D < C
  def initialize
    puts "Instance of class 'D'"
  end
  def report
    puts "I'm breaking the chain and creating my own 'report' method."
  end
end

#Main code
obj1 = C.new
obj1.report
obj2 = D.new
obj2.report
puts "Let's look at superclasses..."
puts "Class C superclass is: #{C.superclass}"
puts "Class D superclass is: #{D.superclass}"
puts "Let's look at ancestors and changing 'include' to 'prepend'"
print "Ancestors of class 'C' #{C.ancestors}\n"
print "Ancestors fo class 'D' #{D.ancestors}\n"