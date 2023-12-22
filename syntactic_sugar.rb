class Account
    attr_accessor :balance
    def initialize(amount=0)
        self.balance = amount
    end

    def +(x)
        self.balance += x
    end

    def -(x)
        self.balance -= x
    end

    def to_s
        balance.to_s
    end
end
acc = Account.new(20)
acc.-(5)
puts acc

class Banner
    def initialize(text)
        @text = text
    end
    
    def to_s
        @text
    end

    def +@
        @text.upcase
    end

    def -@
        @text.downcase
    end

    def !
        @text.reverse
    end
end

banner = Banner.new("Eat at Joe's!")
puts banner
puts +banner
puts -banner
puts !banner
puts (not banner)

class Person
    attr_accessor :name, :age, :email
    
    #def initialize(name)
    #    @name = name
    #end
    #def to_str
    #    name
    #end
    def to_ary
        [name, age, email]
    end
end

david = Person.new
david.name = "David"
david.age = 55
david.email = "david@wherever"
array = []
array.concat(david)
p array
#puts "david is named " + david.name + "."