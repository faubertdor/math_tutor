# Chapter 4 about modules and program organization
# Module Stacklike, related to data structure
# Jean F. Dorancy
# Last modified: 11-11-2015

module Stacklike
  def stack
    @stack ||= []
  end
  def add_to_stack(obj)
    stack.push(obj)
  end
  def take_from_stack
    stack.pop
  end
end
