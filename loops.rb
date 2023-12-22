n = 1

loop do
    n = n + 1
    break if n > 9
end

puts n

n = 1

loop do
    n = n + 1
    next unless n == 10
    break
end

puts n

n = 1
while n < 11
    puts n
    n = n + 1
end
puts "Done!"

n = 1
begin
    puts n
    n = n + 1
end while n < 11
puts "Done!"

n = 1
until n > 10
    puts n
    n = n + 1
    #puts n
end

n = 1
n = n + 1 until n == 10
puts "We've reached 10!"

#if (a,b = [3,4])
#    puts a
#    puts b
#end

class Temperature
    def Temperature.c2f(celsius)
        celsius * 9.0 / 5 + 32
    end
end

celsius = [0, 10, 20, 30, 40, 50, 60, 70, 80, 80, 100]

puts "Celsius\tFahrenheit"
for c in celsius
    puts "#{c}\t#{Temperature.c2f(c)}"
end

# on 10-15-2023, make a ruby script that will show the Celsius temps that are reversed Fahrenheit temps

cels = [*-40..50]
p cels

def c2f(c)
    c * 9 / 5 + 32
end

fahrs = []

for c in cels
    f =  c2f(c)
    fahrs << f
end

#p fahrs

fahr = cels.map {|c| c * 9 / 5 + 32}
p "This is printing fahr: #{fahr}"

class Integer
    def my_times
        c = 0
        puts "c = 0"
        puts "until c == #{self}..."
        until c == self
            yield c
            c += 1
        end
        self
    end
end
ret = 5.my_times {|i| puts "I'm on iteration #{i}!"}
puts ret

array = [1,2,3,4,5]
array.each {|e| puts "The block just got handed #{e}."}

class Array
    def my_each
        c = 0
        until c == size
            yield self[c]
            c += 1
        end
        self
    end
    def my_map
        acc = []
        my_each {|e| acc << yield(e) }
        acc
    end

end

array = [1,2,3,4,5]
array.my_each {|e| puts "The block just got handed #{e}."}



names = ["David", "Alan", "Black"]
p names.my_map {|name| name.upcase}

def block_args_unleashed
    yield(1,2,3,4,5)
end

block_args_unleashed do |a,b=1,*c,d,e|
    puts "Arguments:"
    p a,b,c,d,e
end

def make_salad
    yield "lettuce"
    yield "carrots"
    yield "olive oil"
end

make_salad {|ingredient| puts "Adding #{ingredient} to salad!"}

def geeks
    puts "In the geeks method"

    yield
    puts "Again back to the geeks method"
    yield
end

geeks {puts "This is block"}

def gfg
    yield 2*3
    puts "In the method of gfg"
    yield 100
end
gfg{|i| puts "block #{i}"}

def yield_with_return_value
    geeks_for_geeks = yield
    puts geeks_for_geeks
end

yield_with_return_value {"Welcome to geeksforgeeks"}

def one_yield
    yield
end

def multiple_yields
    yield
    yield
end

one_yield {puts "one yield"}
multiple_yields {puts "multiple yields"}

def yield_with_arguments
    hello = "Hello"
    world = "World!"

    yield(hello, world)
end

yield_with_arguments { |hello,world| puts "#{hello} #{world}"}

def yield_with_return_value
    hello_world = yield

    puts hello_world
end

yield_with_return_value {"Hello World!"}

array = [1,2,3]
array.map { |n| n + 2 }

class Array
    def my_map
        return self.dup unless block_given?
        
        ary =[]

        self.each do |elem|
            ary << yield(elem)
        end
        p ary
        ary
    end
end

array = [1,2,3]
array.my_map {|n| n + 2}
p array
array.my_map
p array
#p ary



