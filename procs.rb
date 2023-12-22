pr = Proc.new { puts "Inside a Proc's block"}

pr.call

pr = proc { puts "Inside a Proc's block"}
pr.call

[1,2,3].each {|x| puts x * 10 }

def call_a_proc(&block)
    block.call
end
call_a_proc {puts "I'm the block...or Proc...or something."}

p = Proc.new {|x| puts x.upcase }
%w{ David Black }.each(&p)

def capture_block(&block)
    puts "Got block as proc"
    block.call
end
capture_block {puts "Inside the block"}

p = Proc.new {puts "This proc argument will serve as a code block."}
capture_block(&p)

albums = { 1988 => "Straight Outta Compton", 1993 => "Midnight Marauders", 1996 => "The Score", 2004 => "Madvillainy", 2015 => "To Pimp a Butterfly" }

p albums[2015]
puts [1988,1996].map(&albums)

puts (1990...1999).map(&albums).compact

class Person
    attr_accessor :name
    def self.to_proc
        Proc.new {|person| person.name}
    end
end
d = Person.new
d.name = "David"
j = Person.new
j.name = "Joe"
puts [d,j].map(&Person)

puts %w{ david black }.map(&:capitalize)
puts %w{ david black }.map {|str| str.capitalize}
puts %w{ david black }.map {|str| str.public_send(:capitalize)}

class Symbol
    def to_proc
        puts "In the new Symbol#to_proc!"
        Proc.new {|obj| obj.public_send(self)}
    end
end

%w{ david black }.map(&:capitalize)

def talk
    a = "Hello"
    puts a
end
a = "Goodbye"
talk
puts a

m = 10
[1,2,3].each {|x| puts x * m }

def multiply_by(m)
    Proc.new {|x| puts x * m}
end
mult = multiply_by(10)
mult.call(12)

def call_some_proc(pr)
    a = "irrelevant 'a' in method scope"
    puts a
    pr.call
end
a = "'a' to be used in Proc block"
pr = Proc.new { puts a}
pr.call
call_some_proc(pr)

def make_counter
    n = 0
    return Proc.new { n += 1 }
end

c = make_counter
puts c.call
puts c.call
d = make_counter
puts d.call
puts c.call

pr = Proc.new {|x| puts "Called with argument #{x}"}
pr.call(100)

pr = Proc.new {|x| p x}
pr.call
pr.call(1,2,3)