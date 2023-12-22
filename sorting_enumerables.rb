class Painting
    include Comparable
    attr_reader :price, :year
    def initialize(price, year)
        @price = price
        @year = year
    end

    def to_s
        "My price is #{price} and I was painted in #{year}."
    end

    def <=>(other_painting)
        self.price <=> other_painting.price
    end
end

paintings = 5.times.map {Painting.new(rand(100...900), rand(1500...2023))}
p paintings
puts "5 randomly generated Painting prices:"
puts paintings
puts "Same paintings, sorted:"
puts paintings.sort

year_sort = paintings.sort do |a,b|
    a.year <=> b.year
end
#p year_sort
pa1 = Painting.new(126,1974)
pa2 = Painting.new(100,2023)
p pa1
puts pa1
p pa2
puts pa2

p pa1 > pa2
p pa1 < pa2
puts pa3 = Painting.new(300,1999)
p pa2.between?(pa1,pa3)

cheapest, priciest = [pa1,pa2,pa3].minmax
puts cheapest
puts priciest

p Painting.new(1000,2000).clamp(cheapest, priciest).object_id == priciest.object_id

