# This program creates a class Ticket for an envent and ask the user to type the info.
# Ticket management
# Jean F. Dorancy
# Last modified: 11-18-2015

class Ticket
    attr_reader :venue, :date, :price
    
    def initialize(venue)
      @venue = venue
    end
    
    def price=(amount)
      while (amount * 100).to_i != amount * 100 or amount == 0
        print "Enter a valid price: "
        amount = gets.to_f
      end
      @price = amount
    end
    
    # Check if it's a valid date
    def date=(date)
      @date = date
    end
end

# Singleton class method to print all tickets
def Ticket.print(arr = [])
  nb_tickets = arr.length
  if nb_tickets != 0
    counter = 0
    puts "Printing all the tickets....\n\n"
    nb_tickets.times do
      puts "Ticket # #{counter += 1}\n"
      puts "Event venue: #{arr[counter - 1].venue}"
      puts "Event date: #{arr[counter - 1].date}"
      puts "Event price : $ #{arr[counter - 1].price}"
      puts "-----------------------------------------\n\n"
    end
  else
    puts "Sorry, there is no tickets!"
  end
end

# Main code    
arr_tickets = []
puts "-----------------------------------------\n\n"
print "How many ticket(s) do you want to enter: "
nb_tickets = gets.to_i
counter = 0
nb_tickets.times do
  puts "Ticket # #{counter += 1}\n"
  print "Event venue: "
  venue = gets.chomp
  event = Ticket.new(venue)
  print "Event date: "
  date = gets.chomp
  event.date = date
  print "What is the price: "
  event.price = gets.to_f
  arr_tickets << event
  puts "-----------------------------------------\n\n"
end

Ticket.print(arr_tickets)