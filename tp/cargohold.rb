# Chapter 4 about modules and program organization
# Cargo Hold, related to data structure
# Jean F. Dorancy
# Last modified: 11-11-2015

require_relative "stacklike"
class Suitcase
end

class CargoHold
    include Stacklike
    def load_and_report(obj)
        puts "Loading object..."
        puts obj.object_id
        add_to_stack(obj)
    end
    def unload
        take_from_stack
    end
end

#Main code
ch = CargoHold.new
3.times do
  sc = Suitcase.new
  ch.load_and_report(sc)
end
puts "Loading completed...\n\n"
counter = 0
3.times do
  puts "Unloading element ##{counter += 1} ID: #{ch.unload.object_id}"
end
