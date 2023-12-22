class GoodDog
    @@number_of_dogs = 0

    def initialize
        @@number_of_dogs += 1
    end

    def self.total_number_of_dogs
        @@number_of_dogs
    end
end

puts GoodDog.total_number_of_dogs

dog1 = GoodDog.new
dog2 = GoodDog.new

puts GoodDog.total_number_of_dogs

class BadDog
    DOG_YEARS = 7

    attr_accessor :name, :age

    def initialize(n, a)
        @name = n
        @age = a * DOG_YEARS
    end

    def to_s
        "This dog's name is #{name} and it is #{age} in dog years."
    end
end

sparky = BadDog.new("Sparky", 4)
puts sparky
p sparky

class TomatoSeed

    @@all = []
    
    def initialize(days_to_mature, disease_resistant, size)
        @days_to_mature = days_to_mature
        @disease_resistant = disease_resistant
        @size = size
        @@all.push(self)
    end
end

ramapo = TomatoSeed.new(80, true, "Medium-Large")
puts ramapo
p ramapo
earlygirl = TomatoSeed.new(50, false, "Medium")
supersonic = TomatoSeed.new(75, true, "Small")
#p TomatoSeed.class_variable_get(:@@all)

class DumbDog
     attr_accessor :name, :height, :weight

    def initialize(n, h, w)
        self.name = n
        self.height = h
        self.weight = w
    end

    def change_info(n, h, w)
        self.name = n
        self.height = h
        self.weight  w
    end

    def info
        "#{self.name} weights #{self.weight} and is #{self.height} tall."
    end

    def what_is_self
        self
    end

    puts self
end

fido = DumbDog.new("Fido", '12 inches', '10 lbs')
p fido.what_is_self

puts __ENCODING__