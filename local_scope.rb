class C
    a = 1
    def local_a
        a = 2
        puts a
    end
    puts a
end
c = C.new
#print c
c.local_a
#print c

a = 0

def t
    puts "Top level method t"
end

class D
    a = 1
    def self.x
        a = 2
        puts "D.x; a = #{a}"
    end

    def m
        a = 3
        puts "D#m; a = #{a}"
    end

    def n
        a = 4
        puts "D#n; a = #{a}"
    end

    puts "Class scope: a = #{a}"
end

D.x
d = D.new
d.m
d.n

puts "Top level: a = #{a}"

class C
    a = 5
    module M
        a = 4
        module N
            a = 3
            class D
                a = 2
                def show_a
                    a = 1
                    puts a
                end
                puts a
            end
            puts a
        end
        puts a
    end
    puts a
end

d = C::M::N::D.new
d.show_a

class C
    def x(value_for_a, recurse = false)
        a = value_for_a
        print "Here's the inspect-string for 'self':"
        puts self.object_id
        puts "And here's a:"
        puts a
        if recurse
            puts "Calling myself (recursion)..."
            x("Second value for a")
            puts "Back after recursion here's a:"
            puts a.object_id
        end
    end
end

e = C.new
e.x("First value for a", true)

module M
    class C
        X = 2
        class D
            module N
                X = 1
            end
        end
    end
end

puts M::C::D::N::X
puts M::C::X

module M
    class C
        class D
            module N
                X = 1
            end
        end
        puts D::N::X
    end
end

    