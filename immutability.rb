class Record
    attr_accessor :artist, :title, :year, :rating

    def initialize(artist, title, year, rating)
        @artist = artist
        @title = title
        @year = year
        @rating = rating
    end
end

the_unseen = Record.new("Quasimoto", "The Unseen", 2000, 3.5)
the_unseen.rating = 4.5
p the_unseen.rating
the_unseen.freeze
p the_unseen.rating.frozen?
#p the_unseen.artist = "Madlib"

p (1..10).yield_self {|r| r.member?(rand(15))}
p (rand(10)+1).yield_self {|x| x.odd? ? x + 1 : x }

def multiply_by(m)
    Proc.new {|x| puts x * m }
end

mult = multiply_by(10) 
p mult
mult.call(12)

add = -> (a,b) { a + b }

#def find_multiples_of_3(arr)
#    arr.select {|el| el % 3 == 0 }
#end



#def find_multiples_of_5(arr)
#    arr.select {|el| el % 5 == 0 }
#end



find_multiples = -> (x, arr) { arr.select { |el| el % x == 0} }
find_multiples_of = find_multiples.curry
find_multiples_of_3 = find_multiples_of.(3)
find_multiples_of_5 = find_multiples_of.(5)

p find_multiples_of_3.([-3,3,4,5,6,8,9,10,12])
p find_multiples_of_5.([-3,3,4,5,6,8,9,10,12])
