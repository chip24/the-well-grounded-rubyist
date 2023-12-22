def block_scope_demo
    x = 100
    1.times do
        x = 200
        puts x
    end
    puts x
    
end
block_scope_demo

def block_local_parameter
    x = 100
    [1,2,3].each do |x|
        puts "Parameter x is #{x}"
        x = x + 10
        puts "Reassigned to x in block; it's now #{x}"
    end
    puts "Outer x is still #{x}"
end

block_local_parameter

class Temperature
    def Temperature.c2f(celsius)
        celsius * 9.0 / 5 + 32
    end
    def Temperature.now
        rand(0..100)
    end
end

celsius = [0,10,20,30,40,50,60,70,80,90,100]
fahrenheit = Temperature.now
puts "The temperature is now: #{fahrenheit} degrees Fahrenheit."
puts "Cel\tFah"
celsius.each do |c;fahrenheit|
    fahrenheit = Temperature.c2f(c)
    puts "#{c}\t#{fahrenheit}"
end
puts fahrenheit

5.times {|i| puts "I'm on iteration #{i}!"}

class Array
    def my_each
        c = 0
        until c == size
            yield self[c]
            c += 1
        end
        self
    end
end

array = [0,1,2,3,4]
array.my_each {|e| puts "I'm on iteration #{e}!"}
array.each {|e| puts "I'm on iteration #{e}."}


    