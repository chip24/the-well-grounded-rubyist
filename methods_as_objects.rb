class C
    def talk
        puts "Method-grabbing test! self is #{self}."
    end
end

c = C.new
meth = c.method(:talk)
p meth.owner
p meth.call

class D < C
end
d = D.new
unbound = meth.unbind
p unbound.bind(d).call
unbound = C.instance_method(:talk)

class A
    def a_method
        puts "Definition in class A"
    end
end

class B < A
    def a_method
        puts "Definition in class B (subclass of A)"
    end
end

class E < B
end

c = E.new
c.a_method
A.instance_method(:a_method).bind(c).call

mult = lambda {|x,y| x * y }
twelve = mult[3,4]
puts twelve
twelve = mult.(3,4)
puts twelve