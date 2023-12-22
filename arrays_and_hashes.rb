hash = { red: "ruby", white: "diamond", green: "emerald" }
hash.each_with_index {|(key, value), i|
    puts "Pair #{i} is: #{key}/#{value}"}

a = Array.new(3, "abc")
puts a
p a

class Point
    def initialize(x, y)
        @x = x
        @y = y
    end

    def to_a
        puts 'to_a method called'
        [x,y]
    end

    def to_ary
        puts "to_ary method called"
        [x,y]
    end

    def inspect
        "#<#{self.class.name} (#{x}, #{y})>"
    end

    private

    attr_reader :x, :y
end

point = Point.new(1,3)
p point

p Point.new(*point)

x,y = point
p point

%w(Joe Leo III)

a = []
a[0] = "first"

a = [1,2,3,4,5]
p a[2]

a = %w( red orange yellow purple gray indigo violet)

state_hash = {"Connecticut" => "CT", "Delaware" => "DE", "New Jersey" => "NJ", "Virginia" => "VA"}

#print "Enter the name of a state: "
#state = gets.chomp
state = "Delaware"
abbr = state_hash[state]
puts "The abbreviation of #{state} is #{abbr}."

state_hash["New York"] = "NY"
p state_hash

h = Hash.new
h["a"] = 1
h["a"] = 2
puts h["a"]

conn_abbrev = state_hash["Connecticut"]
p conn_abbrev

del_abbrev = state_hash.fetch("Delaware")
p del_abbrev

p state_hash.fetch("Nebraska", "Unknown state")

p two_states = state_hash.values_at("New Jersey", "Delaware")

state_hash.fetch_values("New Jersey", "WYOMING") do |key|
    key.capitalize
end

p state_hash

contacts = { john: {
    phone: "555-1234",
    email: "john@example.com"},
    eric: {
        phone: "555-1235",
        email: "eric@example.com"
    }
}

p contacts.dig(:eric, :email)

h1 = { first: "Joe",
        last: "Leo",
    suffix: "III"}
h2 = { suffix: "Jr."}

#h1.update(h2)
h3 = h1.merge(h2)
puts h1
puts h2
puts h3
puts h1[:suffix]

