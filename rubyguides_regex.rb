p "Do you like cats?" =~/like/

if "Do you like cats?".match(/like/)
    puts "Match found!"
end

def contains_vowel(str)
    str =~ /[aeiou]/
end

p contains_vowel("test")
p contains_vowel("sky")

def contains_number(str)
    #str =~ /[0-9]/
    str =~/\d/
end

p contains_number("The year is 2015")
p contains_number("The cat is black")

p "5a5".match(/\d.\d/)
p "5a5".match(/\d\.\d/)
p "5.5".match(/\d\.\d/)

def ip_address?(str)
    !!(str =~ /^\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}$/)
end

p ip_address?("192.158.1.1")
p ip_address?("0000.0000")

p "Regex are cool".match /\w{4}/
p "Regex are cool".match /~\w{4}$/

Line = Struct.new(:time, :type, :msg)
LOG_FORMAT = /(\d{2}:\d{2}) (\w+) (.*)/

def parse_line(line)
    line.match(LOG_FORMAT) {|m| Line.new(*m.captures)}
end

p parse_line("12:42 INFO User has logged in.")

m = "John 31".match /\w+ (\d+)/
p m
p m[1]

m = "David 30".match /(?<name>\w+) (?<age>\d+)/
p m[:age]
p m[:name]

def number_after_word?(str)
    !!(str =~ /(?<=\w) (\d+)/)
end

p number_after_word?("Grade 99")

puts /a/.class

p "this is some string".scan(/\w+/)
p "The year was 1492.".scan(/\d+/)

str = "lord of the rings"

p str.gsub(/\w+/) {|w| w.capitalize}

email = "test@example.com"

p !!email.match(/\A[\w.+-]+@\w+\.\w+\z/)

p email.match?(/\A[\w.+-]+@\w+\.\w+\z/)
