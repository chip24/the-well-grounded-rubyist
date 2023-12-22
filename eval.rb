puts eval("2+2")

#print "Method name: "
#m = gets.chomp
#eval("def #{m}; puts 'Hi!'; end")
#eval(m)

def use_a_binding(b)
    eval("puts str", b)
end
str = "I'm a string in top-level binding!"
use_a_binding(binding)

p self
a = []
a.instance_eval {p self}

class C
    def initialize
        @x = 1
    end
end
c = C.new
c.instance_eval { puts @x }

string = "A sample string"
p string.instance_exec("s") {|delim| self.split(delim)}

class Person
    def initialize(&block)
        instance_eval(&block)
    end

    def name(name=nil)
        @name ||= name
    end
    def age(age=nil)
        @age ||= age
    end
end

joe = Person.new do
    name "Joe"
    age 37
end
p joe

c = Class.new
c.class_eval do
    def some_method
        puts "Created in class_eval"
    end
end
c_instance = c.new
c_instance.some_method

class Name
    def initialize(first_name, last_name)
        @first_name = first_name
        @last_name = last_name
    end

    def to_s
        instance_variables.each do |ivar|
            print "#{instance_variable_get(ivar)} "
        end
    end

    def method_missing(m, args, &block)
        if m.to_s.end_with?("_name=")
            self.class.send(:define_method, m) do |args|
                instance_variable_set("@#{m.to_s.chop}", args)
            end
            send(m, args)
        else
            raise "No method for #{m}!"
        end
    end
end

n = Name.new("Joe", "Leo")
p n.instance_variables
p n.to_s
n.middle_name = "Phillip"
p n.instance_variables
p n.to_s
#n.initials = "JPL"

