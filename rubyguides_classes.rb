class Orange

    def initialize
        @juice_available = 100
    end
    
    def squeeze
        puts "Here's your juice!"
        @juice_available -= 50
    end
end

orange = Orange.new
orange.squeeze

class Point
    def initialize(x,y)
        @x = x
        @y = y
    end
end

point = Point.new(10,20)
p point

class Food

    attr_accessor :protein
    def initialize(protein)
        @protein = protein
    end
    #def protein
    #    @protein
    #end

    #def protein=(value)
    #    @protein = value
    #end

end

bacon = Food.new(21)
puts bacon.protein
puts bacon.protein=(25)

