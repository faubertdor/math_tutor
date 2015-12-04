# Chapter 4 about modules and program organization
# Keyword super to call earlier version of method in new definition
# Jean F. Dorancy
# Last modified: 11-19-2015

class Bicycle
    attr_reader :gears, :wheels, :seats
    def initialize(gears = 1)
        @gears = gears
        @wheels = 2
        @seats = 1
    end
end
class Tandem < Bicycle
    def initialize(gears)
      super(gears)
      @seats = 2
    end
end

#Main code
the_shark = Bicycle.new(10)
you_and_me = Tandem.new(5)
puts "Bicycle -- Gears: #{the_shark.gears}, Wheels: #{the_shark.wheels}, Seats: #{the_shark.seats}"
puts "Tandem  -- Gears: #{you_and_me.gears}, Wheels: #{you_and_me.wheels}, Seats: #{you_and_me.seats}"