ticket = Object.new

def ticket.date
    "1903-01-02"
end

def ticket.venue
    "Town Hall"
end

def ticket.event
    "Author's reading"
end

def ticket.performer
    "Mark Twain"
end

def ticket.seat
    "Second Balcony, row J, seat 12"
end

def ticket.price
    5.50
end

def ticket.availability_status
    "sold"
end

def ticket.available?
    false
end

def ticket.print_details(*x)
    x.each { |detail| puts "This ticket is #{detail}." }
end

=begin
print "This ticket is for: "
print ticket.event + ", at "
print ticket.venue + ", on "
puts ticket.date + "."
print "The performer is "
puts ticket.performer + "."
print "The seat is "
print ticket.seat + "."
print "and it costs $"
puts "%.2f." % ticket.price
=end

puts "This ticket is for: #{ticket.event}, at #{ticket.venue}.\n" + "The performer is #{ticket.performer}.\n" + "The seat is #{ticket.seat}, " + "and it costs $#{"%.2f." % ticket.price}"
=begin
print "Information desired: "
request = gets.chomp

if ticket.respond_to?(request)
    puts ticket.send(request)
else
    puts "No such information available"
end
=end

ticket.print_details("non-refundable", "non-transferable", "in a non-smoking section")


