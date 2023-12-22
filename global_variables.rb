$gvar = "I'm a global!"
class C
    
    def examine_global
        puts $gvar
    end
end

c = C.new
c.examine_global

class Person
    def whole_name
        n = $first_name + " "
        n << "#{$middle_name} " if $middle_name
        n << $last_name
    end
end

david = Person.new
$first_name = "David"
$middle_name = "Alan"
$last_name = "Black"
puts david.whole_name