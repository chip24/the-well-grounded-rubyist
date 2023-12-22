class Cookbook
    attr_accessor :title, :author
    def initialize
        @recipes = []
    end
    def method_missing(m, *args, &block)
        @recipes.public_send(m, *args, &block)
    end
end

class Recipe
    attr_accessor :main_ingredient
    def initialize(main_ingredient)
        @main_ingredient = main_ingredient
    end
end

cb = Cookbook.new
recipe_for_cake = Recipe.new("flour")
recipe_for_chicken = Recipe.new("chicken")
cb << recipe_for_cake
cb << recipe_for_chicken
chicken_dishes = cb.select {|recipe| recipe.main_ingredient == "chicken"}
chicken_dishes.each { |dish| puts dish.main_ingredient }
p cb

class Person
    attr_accessor :name, :age
    def initialize(name, age)
        @name, @age = name, age
    end
    def method_missing(m, *args, &block)
        if /set_(.*)/.match(m)
            self.public_send("#{$1}=", *args)
        else
            super
        end
    end
    def respond_to_missing?(m, include_private = false)
        /set_/.match(m) || super
    end
end

person = Person.new("Joe", 37)
p person.age
person.set_age(38)
p person.age
p person.respond_to?(:set_age)

module M
    def self.included(c)
        puts "I have just been mixed into #{c}."
    end
end
class C
    include M
end

module M
    def self.included(c1)
        def c1.a_class_method
            puts "Now the class has a new class method."
        end
    end
    def an_inst_method
        puts "This module supplies this instance method."
    end
end
class C
    include M
end
C.a_class_method
c = C.new
c.an_inst_method

module M
    def self.extended(obj)
        puts "Module #{self} is being used by #{obj}."
    end
    def an_inst_method
        puts "This module supplies this instance method."
    end
end
my_object = Object.new
my_object.extend(M)
my_object.an_inst_method

module M
    def self.included(c)
        puts "#{self} included by #{c}."
    end
    def self.extended(obj)
        puts "#{self} extended by #{obj}."
    end
end

obj = Object.new
puts "Includng M in object's singleton class:"
class << obj
    include M
end
puts
obj = Object.new
puts "Extending object with M:"
obj.extend(M)

class C
    def self.inherited(subclass)
        puts "#{self} just got subclassed by #{subclass}."
    end
end
class D < C
end
class E < D
end

class C
    def self.const_missing(const)
        puts "#{const} is undefined-setting it to 1."
        const_set(const,1)
    end
end
puts C::A
puts C::A

class C
    def self.method_added(m)
        puts "Method #{m} was just defined."
    end
    def a_new_method
    end
end

class C
    def self.singleton_method_added(m)
        puts "Method #{m} was just defined."
    end
    def self.new_class_method
    end
end

obj = Object.new
class << obj
    def singleton_method_added(m)
        puts "Singleton method #{m} was just defined."
    end
    def a_new_singleton_method
    end
end

class C
    def singleton_method_added(m)
        puts "Singleton method #{m} was just defined."
    end
end
c = C.new
def c.a_singleton_method
end






