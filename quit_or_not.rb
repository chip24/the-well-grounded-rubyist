def quit_or_not
    print "Exit the program? (yes or no): "
    answer = gets.chomp
    case answer
    when "yes", "y"
        puts "Good-bye!"
        exit
    when "no", "n"
        puts "OK, we'll continue"
    else
        puts "That's an unknown answer -- assuming you meant 'no'"
    end
    puts "Continuing with program...."
    quit_or_not
end
#quit_or_not

=begin
The case statement above is the same as the below which is written in threequal terms

    if "yes" === answer
        puts "Good-bye!"
        exit
    elsif "no" === answer
        puts "OK, we'll continue"
    else
        puts "That's an unknown answer-assuming you meant 'no'"
    end
=end

class Ticket
    attr_accessor :name, :venue, :date
    def initialize(name, venue, date)
        self.name = name
        self.venue = venue
        self.date = date
        
    end

    def ===(other_ticket)
        self.date == other_ticket.date
    end
end

#ticket1 = Ticket.new("Town Hall", "07/08/18")
#ticket2 = Ticket.new("Conferece Center", "07/08/18")
#ticket3 = Ticket.new("Town Hall", "08/09/18")
#puts "ticket1 is for an event at: #{ticket1.venue}"
#case ticket1
#when ticket2
#    puts "Same date as ticket2!"
#when ticket3
#    puts "Same date as ticket3!"
#else
#    puts "No match."
#end

class TicketComparer < Ticket 

    def self.compare(ticket1, ticket2, ticket3)
        case ticket1
        when ticket2
            puts "Same date as ticket2"
        when ticket3
            puts "Same date as ticket3!"
        else
            puts "No match."
        end
    end
end

ticket1 = Ticket.new("ticket1","Town Hall", "07/08/18")
ticket2 = Ticket.new("ticket2", "Conferece Center", "07/08/18")
ticket3 = Ticket.new("ticket3","Town Hall", "08/09/18")
puts ticket1.name
puts ticket2.venue
puts ticket3.date
puts "#{ticket1.name} is for an event on: #{ticket1.date}"

TicketComparer.compare(ticket1, ticket2, ticket3)

