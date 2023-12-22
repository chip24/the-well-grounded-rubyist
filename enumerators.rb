=begin
e = Enumerator.new do |y|
    y << 1
    y << 2
    y << 3
end
=end

# rewrite of the above enumerator
e = Enumerator.new do |y|
    puts "Starting up the block!"
    (1..3).each {|i| y << i }
    puts "Exiting the block!"
end

p e.to_a
p e.map {|x| x * 100 }
p e.select {|x| x > 1 }
p e.take(2) 

a = [*1..5]
p a
en = Enumerator.new do |y|
    total = 0
    until a.empty? 
        total += a.pop
        y << total
    end
end

puts "Result of en.take(3):"
p en.take(3)
puts "Array after en.take(3):"
p a
puts "Result of en.to_a:"
en.to_a
p a

names = %w(David Black Yukihiro Matsumoto)
p names
e = names.enum_for(:select)
p e.each {|n| n.include?('a')}
e = names.enum_for(:inject, "Names: ")
p e
p e.each {|string, name| string << "#{name}..."}

str = "Hello"
p str.each_byte {|b| puts b }

numbers = [1,2,3,4,5]
numbers.each do |n|
     puts n * 2
end

numbers.each {|n| puts n * 20}

toppings = %w(pepperoni mushroom bacon pineapple)

def pizza(toppings)
    my_statements = []
    toppings.each do |topping|
        my_statements << "I love #{topping} pizza!"
    end
    p my_statements
    my_statements
end

pizza(toppings)

h = { cat: "feline", dog: "canine", cow: "bovine" }
p h
p h.select {|key,value| key =~ /c/ }
e = h.enum_for(:select)
p e.each {|key,value| key =~ /c/ }
e = h.to_enum
p h.each {}
p e.each {}
p e.select {|key,value| key =~ /c/ }

class PlayingCard
    SUITS = %w{clubs diamonds hearts spades}
    RANKS = %w{2 3 4 5 6 7 8 9 10 J Q K A}
    class Deck
        def cards
            @cards.to_enum
        end
        def initialize(n=1)
            @cards = []
            SUITS.cycle(n) do |s|
                RANKS.cycle(1) do |r|
                    @cards << "#{r} of #{s}"
                end
            end
        end
    end
end

deck = PlayingCard::Deck.new
p deck



