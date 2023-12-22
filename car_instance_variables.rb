class Car

    #@makes = []
    @@cars = {}
    #@@total_count = 0 
    
    attr_accessor :make

    def self.makes
        @makes = []
    end    
    
    
    def self.makes=(make)
        @makes << make       
    end

    

    def self.total_count
        @total_count ||= 0
    end

    def self.total_count=(n)
        @total_count = n
    end

    def self.cars
        @@cars
    end


    def self.add_make(make)
        unless @makes.include?(make)
            @makes << make
            @@cars[make] = 0
        end
    end

    def initialize(make)
        #if @makes.include?(make)
            #puts "Creating a new #{make}!"
        @make = []
        @@cars[make] += 1
        self.class.total_count += 1
        #else
        #    raise "No such make: #{make}."
        
    end
    def make_mates
        @@cars[self.make]
    end
end

class Hybrid < Car
end



Car.add_make("Honda")
Car.add_make("Ford")
h = Car.new("Honda")
f = Car.new("Ford")
h2 = Car.new("Honda")

puts "Counting cars of same make as h2..."
puts "There are #{h2.make_mates}."
puts "Counting total cars..."
puts "There are #{Car.total_count}."

puts h.inspect
#p Car.methods
#p Car.instance_methods
p f.make
p Car.cars
p Car.makes

h3 = Hybrid.new("Honda")
f2 = Hybrid.new("Ford")
puts "There are #{Hybrid.total_count} hybrids on the road!"