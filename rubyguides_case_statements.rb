capacity = 99

case capacity
when 0 
    puts "You ran out of gas."
when 1..20
    puts "The tank is almost empty.  Quickly, find a gas station!"
when 21.70
    puts "You should be OK for now."
when 71..100
    puts "The tank is almost full."
else
    puts "Error: capacity has an invalid value (#{capacity})"
end

season = "winter"

case season
when "summer"
    puts "it's warm"
when "winter"
    puts "it's cold"
else
    puts "it's raining"
end

def perform(obj)
    case obj
    when String
        puts "a string"
    when Integer
        puts "an integer"
    when Vehicle
        puts "a vehicle"
    else
        puts "not a string, integer, or vehicle"
    end
end

perform(5)
perform('name')

class Vehicle
end

perform Vehicle.new

num = 5

class Even
    def ===(obj)
        (obj % 2) == 0
    end
end

class Odd
    def ===(obj)
        (obj % 2) == 1
    end
end

case num
when Even.new then puts "even"
when Odd.new then puts "odd"
end

word = "u"
case word
when /\d/
    puts "digit"
when /[aeiou]/
    puts "a vowel"
end

value = 5

result = case value
when 4 then 400
when 5 then 500
when 6 then 600
else 0
end

puts value
puts result

def result(value)
    if 4 === value
        400
    elsif 5 === value
        500
    elsif 6 === value
        600
    else
        0
    end
end

puts result(4)

def test(quality)
    return case quality
        when 0..2 then "Low"
        when 3..5 then "Medium"
        when 6..8 then "High"
        else "Invalid"
    end
end
    
puts test(0)
puts test(4)
puts test(8)
puts test(-1)

value = "alexandria"

case value
when /^a/
    puts "Starts with letter A"
when /^b/
    puts "Starts with B"
end

values = ["value 100", "string box"]

values.each do |value|
    case value
    when /value (\d+)/
        argument = $1
        puts "Value argument - %s" % argument
    when /string (.+)/
        puts "String argument = #$1"
    end
end

count = 1000
n1 = Time.now.usec

x = 0
v = 5

count.times do
    x = case v
    when 0..1 then 1
    when 2..3 then 2
    when 4..6 then 3
    else 0
    end
end
puts x

n2 = Time.now.usec

count.times do
    if v >= 0 && v <= 1
        x = 1
    elsif v >= 2 && v <= 3
        x = 2
    elsif v >= 4 && v <= 6
        x = 3
    else
        x = 0
    end
end

puts x

n3 = Time.now.usec

puts ((n2-n1) / 1000)
puts ((n3 - n2) / 1000)








