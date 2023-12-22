def print_conditionally
    print "enter an integer: "
    n = gets.to_i
    if n > 0
        puts "Your number is positive."
    elsif n < 0
        puts "Your number is negative."
    else
        puts "Your number is zero."
    end
end

#print_conditionally

name = "David A. Black"
if m = /la/.match(name)
    puts "Found a match!"
    print "Here's the unmatched start of the string: "
    puts m.pre_match
    print "Here's the unmatched end of the string: "
    puts m.post_match
else
    puts "No match"
end