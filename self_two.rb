class C
    puts "Just started class C:"
    puts self
    module M
        puts "Nested module C::M"
        puts self
    end
    puts "Back in outer level of C:"
    puts self
end

c = C.new
puts c

class D
    def D.no_dot
        puts "As long as self is D, you can call this method with no dot"
    end
    no_dot
end
D.no_dot

class E
    def x
        puts "This is method 'x'"
    end

    def y
        puts "This is method 'y', about to call x without a dot."
        x
    end
end
e = E.new
e.y

class Person
    attr_accessor :first_name, :middle_name, :last_name

    def whole_name
        n = first_name + " "
        n << "#{middle_name} " if middle_name
        n << last_name
    end
end
david = Person.new
david.first_name = "David"
david.last_name = "Black"
puts "David's whole name: #{david.whole_name}"
david.middle_name = "Alan"
puts "David's new whole name: #{david.whole_name}"

class F
    puts "Just inside the class definition block. Here's self:"
    p self

    @v = "I am an instance variable at the top level of a class body."
    puts "And here's the instance variable @v, belonging to #{self}:"
    p @v

    def show_var
        puts "Inside an instance method definition block.  Here's self:"
        p self
        puts "And here's the instance variable @v, belonging to #{self}:"
        p @v
    end
end

    #def set_v
    #    @v = "I am an instance variable and I belong to any instance of F."
    #end

    #def show_var
     #   puts @v
    #end

    #def self.set_v
     #   @v = "I am an instance variable and I belong to F."
    #end
#end


f = F.new
f.show_var