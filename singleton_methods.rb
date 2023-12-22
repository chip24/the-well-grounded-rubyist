class C
    def talk
        puts "Hi!"
    end
end

c = C.new
c.talk

obj = Object.new
def obj.talk
    puts "Hi!"
end

obj.talk

class Car
    def self.makes
        %w{ Honda Ford Toyota Chevrolet Volvo }
    end
end

    
str = "I am a string"
class << str
    def twice
        self + " " + self
    end
end
puts str.twice

N = 1
obj = Object.new
class << obj
    N = 2
end

def obj.a_method
    puts N
end

class << obj
    def another_method
        puts N
    end
end
obj.a_method
obj.another_method

class Ticket
    class << self
        def most_expensive(*tickets)
            tickets.max_by(&:price)
        end
    end
end

module Secretive
    def name
        "[not available]"
    end
end

class Person
    attr_accessor :name
end
david = Person.new
david.name = "David"
joe = Person.new
joe.name = "Joe"
ruby = Person.new
ruby.name = "Ruby"
david.extend(Secretive)
ruby.extend(Secretive)
#def david.name
#    "[not available]"
#end



class << ruby
    include Secretive
end

puts "We've got one person named #{joe.name},"
puts "one named #{david.name},"
puts "and one named #{ruby.name}."

module P 
    def talk
        puts "I'm from module P"
    end
end

module M
    def talk
        puts "Hello from module!"
    end
end

class C
    include P
    def talk
        puts "Hi from the original class!"
    end
end

c = C.new
c.talk
class << c
    #include P
    include M
    p ancestors
end
c.talk

string = "a string"
p string.singleton_class.ancestors

class C
end
def C.a_class_method
    puts "Singleton method defined on C"
end
C.a_class_method

class D < C
end
D.a_class_method

string = "Hello there!"
string.gsub!(/e/, "E").reverse!
puts string
string = "Hello there!"
#string.gsub!(/zzz/,"xxx").reverse!
puts string

states = { "NY" => "New York", "NJ" => "New Jersey", "ME" => "Maine"}
string = "Eastern states include NY, NJ, and ME."
while string.sub!(/\b([A-Z]{2})\b/) {states[$1]}
    puts "Replacing #{$1} with #{states[$1]...}"
end

"Hello".tap {|string| puts string.upcase}.reverse




