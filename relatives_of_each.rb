[1,2,3].reverse_each {|e| puts e * 10}

names = ["George Washington", "John Adams", "Thomas Jefferson", "James Madison"]
names.each_with_index do |pres, i|
    puts "#{i + 1}. #{pres}"
end

%w( a b c).each_index {|i| puts i}

letters = {"a" => "ay", "be" => "bee", "c" => "see"}
letters.each_with_index {|(key, value), i| puts i}

#letters.each_index {|(key, value), i| puts i}

array = %w{red yellow blue}
p array
array.each.with_index do |color,i|
    puts "Color number #{i} is #{color}."
end

names.each.with_index(1) do |pres, i|
    puts "#{i} #{pres}"
end

array = [1,2,3,4,5,6,7,8,9,10]
array.each_slice(3) {|slice| p slice}
array.each_cons(3) {|cons| p cons}

parsed_report = ["Top Secret Report", "Eyes Only", "=====", "Title: The Meaning of Life"]
p parsed_report.slice_before(/=/).to_a

parsed_report = ["Top Secret Report", "Eyes Only", "=====", "Title: The Meaning of Life", "Author: [REDACTED]", "Date: 2018-01-01", "=====", "Abstract:\n"]
p parsed_report.slice_after(/=/).to_a

p (1..10).slice_before {|num| num % 2 == 0 }.to_a

p [1,2,3,3,4,5,6,6,7,8,8,8,9,10].slice_when {|i,j| i ==j}.to_a

class PlayingCard
    SUITS = %w(clubs diamonds hearts spades)
    RANKS = %w(2 3 4 5 6 7 8 9 10 J Q K A)
    class Deck
        attr_reader :cards
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
#puts deck.cards
puts deck.cards.size

p [1,2,3,4].inject(0) {|acc,n| acc +n }
p [1,2,3,4].inject(:+)
p [2,3,4,5].inject(0) {|acc,n| acc + n }
p [2,3,4,5].inject(:+)

[1,2,3,4].inject do |acc,n|
    puts "adding #{acc} and #{n}...#{acc+n}"
    acc + n
end

names = %w(David Yukihiro Chad Amy)
p names
p names.map {|name| name.upcase}


