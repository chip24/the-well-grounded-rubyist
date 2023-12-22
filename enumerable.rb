class Rainbow
    include Enumerable
    def each
        yield "red"
        yield "orange"
        yield "yellow"
        yield "green"
        yield "blue"
        yield "indigo"
        yield "violet"
    end
end

r = Rainbow.new
r.each do |color|
    puts "Next color: #{color}"
end

y_color = r.find {|color| color.start_with?('y')}
puts "First color starting with 'y' is #{y_color}."

state_abbr = {
    "Alabama" => "AL",
    "Alaska" => "AK",
    "Arizona" => "AZ",
    "Arkansas" => "AR",
    "California" => "CA",
    "Colorado" => "CO",
    "Connecticut" => "CT",
    "Delaware" => "DE",
    "District of Columbia" => "DC",
    "Florida" => "FL",
    "Georgia" => "GA",
    "Hawaii" => "HI",
    "Idaho" => "ID",
    "Illinois" => "IL",
    "Indiana" => "IN",
    "Iowa" => "IA",
    "Kansas" => "KS",
    "Kentucky" => "KY",
    "Louisiana" => "LA",
    "Maine" => "ME",
    "Maryland" => "MD",
    "Massachusetts" => "MA",
    "Michigan" => "MI",
    "Minnesota" => "MN",
    "Mississippi" => "MS",
    "Missouri" => "MO",
    "Montana" => "MT",
    "Nebraska" => "NE",
    "Nevada" => "NV",
    "New Hampshire" => "NH",
    "New Jersey" => "NJ",
    "New Mexico" => "NM",
    "New York" => "NY",
    "North Carolina" => "NC",
    "North Dakota" => "ND",
    "Ohio" => "OH",
    "Oklahoma" => "OK",
    "Oregon" => "OR",
    "Pennsylvania" => "PA",
    "Rhode Island" => "RI",
    "South Carolina" => "SC",
    "South Dakota" => "SD",
    "Tennessee" => "TN",
    "Texas" => "TX",
    "Utah" => "UT",
    "Vermont" => "VT",
    "Virginia" => "VA",
    "Washington" => "WA",
    "West Virginia" => "WV",
    "Wisconsin" => "WI",
    "Wyoming" => "WY",
  }

  states = ["Alabama", "Alaska", "Arizona", "Arkansas", "California", "Colorado", "Connecticut", "Delaware", "District of Columbia", "Florida", "Georgia", "Hawaii", "Idaho", "Illinois", "Indiana", "Iowa", "Kansas", "Kentucky", "Louisiana", "Maine", "Maryland", "Massachusetts", "Michigan", "Minnesota", "Mississippi", "Missouri", "Montana", "Nebraska", "Nevada", "New Hampshire", "New Jersey", "New Mexico", "New York", "North Carolina", "North Dakota", "Ohio", "Oklahoma", "Oregon", "Pennsylvania", "Rhode Island", "South Carolina", "South Dakota", "Tennessee", "Texas", "Utah", "Vermont", "Virginia", "Washington", "West Virginia", "Wisconsin", "Wyoming"]


  p states.include?("Louisiana")
  p states.all? {|state| state =~ / / }
  p states.any? {|state| state =~ / / }
  p states.one? {|state| state =~ /West/ }
  p states.none? {|state| state =~ /East/ }

  p state_abbr.include?("Louisiana")
  p state_abbr.all? {|state, abbr| state =~ / / }
  p state_abbr.one? {|state, abbr| state =~ /West/ }

  p state_abbr.keys.all? {|state| state =~ / /}

  r = Rainbow.new
  p r.select {|color| color.size == 6 }

  p r.map {|color| color[0,3]}

  p r.drop_while {|color| color.size < 5} 

  p "blue".size

a = [*1..10]
p a

p a.find_all {|item| item > 5}
p a.select {|item| item > 100 }
p a.reject {|item| item > 5 }

colors = %w(red orange yellow green blue indigo violet)
p colors
p colors.grep(/o/)

miscellany = [75, "hello", 10...20, "goodbye"]
p miscellany.grep(String)
p miscellany.grep(50..100)
p colors.grep(/o/) {|color| color.upcase }
p colors.group_by {|color| color.size}

class Person
    attr_accessor :age
    def initialize(options)
        self.age = options[:age]
    end

    def teenager?
        (13..19) === age
    end
end

people = 10.step(25,3).map {|i| Person.new(:age => i)}
#p people
teens = people.partition {|person| person.teenager?}
p teens
puts "#{teens[0].size}: teens: #{teens[1].size} non-teens"

address = {city: "New York", state: "NY", zip: "10027"}
p address.first
p address[:zip] = "10018"
p address.first

class Die
    include Enumerable
    def each
        loop do
            yield rand(6) + 1
        end
    end
end
puts "Welcome to 'You Win If You Roll a 6'!"
d = Die.new
d.each do |roll|
    puts "You rolled a #{roll}."
    if roll == 6
        puts "You win!"
        break
    end
end

states = %w(NJ NY CT MA VT FL)
p states
p states.take(2)
p states.drop(2)
p states.take_while {|s| /N/.match(s)}
p states.drop_while {|s| /N/.match(s) }
states.unshift("NE")
p states
p states.take(2) {|s| /N/.match(s)}

langs = %w(Ruby C APL Smalltalk Perl)
p langs
p langs.min {|a,b| a.size <=> b.size}
p langs.min_by {|lang| lang.size}
p langs.minmax
p langs.minmax_by {|lang| lang.size}

state_hash = {"New York" => "NY", "Maine" => "ME", "Alaska" => "AK", "Alabama" => "AL"}
p state_hash.min
p state_hash.min_by {|name, abbr| name}
p state_hash.min_by {|name, abbr| abbr}


