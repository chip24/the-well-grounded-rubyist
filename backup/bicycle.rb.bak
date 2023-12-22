class Bicycle
    attr_reader :gears, :wheels, :seats
    def initialize(gears=1)
        @wheels = 2
        @seats = 1
        @gears = gears
    end

    def rent
        puts "Sorry but this model is sold out."
    end
end

class Tandem < Bicycle
    def initialize(gears)
        super
        @seats = 2
    end

    def rent
        puts "This bike is available!"
    end
end

t = Tandem.new(1)
p t
p t.method(:rent)
p t.method(:rent).call
p t.method(:rent).super_method.call

class Student
    def method_missing(m, *args)
        if m.to_s.start_with?("grade_for_")
            puts "You got an A in #{m.to_s.split("_").last.capitalize}!"
        else
            super
        end
    end
end
