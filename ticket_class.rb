class Ticket

    VENUES = ["Convention Center", "Fairgrounds", "Town Hall"]

    def initialize(venue, date)
        if VENUES.include?(venue)
            @venue = venue
        else
            raise ArgumentError, "Unknown venue #{venue}"
        end

        @date = date
    end

    def date=(event_date)
        @year, @month, @day = event_date.split("-")
        y = @year.to_i
        if y < 100
            puts "Make sure to enter the date in the format 'yyyy-mm-dd'."
        end
    end

    def price=(amount)
        if (amount * 100).to_i == amount * 100
            @price = amount
        else
            puts "The price seems to be malformed."
        end
        
    end

    def price
        @price
    end

    def venue
        @venue
    end

    def date
        @date
    end

    def event
        "Can't really be specified yet..."
    end

    def discount(percent)
        @price = @price * (100 - percent) / 100.0
    end

    def Ticket.most_expensive(*tickets)
        tickets.max_by(&:price)
    end

end

th = Ticket.new("Town Hall", "2013-11-12")
cc = Ticket.new("Convention Center", "2014-12-13")
fg = Ticket.new("Fairgrounds", "2015-10-11")
puts "We have created two tickets."
puts "The first ticket is for a #{th.venue} event on #{th.date}."
puts "The second ticket is for an event on #{cc.date} at #{cc.venue}."
ticket = Ticket.new("Town Hall", "2013-11-12")
ticket.price=63.00
puts "The ticket costs $#{"%.2f" % ticket.price}."
ticket.price=72.50
puts "Whoops -- it just went up. It now costs $#{"%.2f" % ticket.price}."
th.price = 12.55
cc.price = 10.00
fg.price = 18.00
highest = Ticket.most_expensive(th, cc, fg)
puts "The highest-priced ticket is the one for #{highest.venue}."
puts "The ticket for the #{th.venue} has been discounted 15% to $#{"%.2f" % th.discount(15)}."
ticket.date = "2013-11-12"
#puts "Testing the response of a ticket instance..."
#wrong = fg.most_expensive
puts "We've closed the class definition."
puts "So we have to use the path notation to reach the constant."
puts "The venues are:"
puts Ticket::VENUES

=begin
# instance variables, which start with @, are available to all methods in a class while local variables, which DO NOT start with @, are only available to the method where they are defined
class Person
    def set_name(string)
        puts "Setting person's name..."
        @name = string
    end

    def get_name
        puts "Returning the person's name..."
        @name
    end
end

    joe = Person.new
    joe.set_name("Joe")
    puts joe.get_name
=end

class Publication
    attr_accessor :publisher
end

class Magazine < Publication
    attr_accessor :editor
end



mag = Magazine.new
mag.publisher = "David A. Black"
mag.editor = "Joe Leo"
puts "Mag is published by #{mag.publisher} and edited by #{mag.editor}."