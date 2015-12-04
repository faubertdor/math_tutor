# Case statement with "threequal operator" ===
# Using case/when to compare tickets with ===
# Jean F. Dorancy
# 30-11-15

class Ticket
  attr_accessor :venue, :date
  
  def initialize(venue, date)
    self.venue = venue
    self.date = date
  end
  
  def === (other_ticket)
    self.venue == other_ticket.venue
  end
end

#main code
ticket1 = Ticket.new("Thomassin 32", "30-11-2015")
ticket2 = Ticket.new("Petion Ville", "31-12-2015")
ticket3 = Ticket.new("Thomassin 32", "30-11-2015")

puts "Ticket1 is for an event at #{ticket1.venue}."
case ticket1
when ticket2
  puts "Same location as ticket2!"
when ticket3
  puts "Same location as ticket3!"
else
  puts "No match!"
end