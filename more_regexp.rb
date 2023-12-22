states = [
    "Alabama",
    "Alaska",
    "Arizona",
    "Arkansas",
    "California",
    "Colorado",
    "Connecticut",
    "Delaware",
    "District of Columbia",
    "Florida",
    "Georgia",
    "Hawaii",
    "Idaho",
    "Illinois",
    "Indiana",
    "Iowa",
    "Kansas",
    "Kentucky",
    "Louisiana",
    "Maine",
    "Maryland",
    "Massachusetts",
    "Michigan",
    "Minnesota",
    "Mississippi",
    "Missouri",
    "Montana",
    "Nebraska",
    "Nevada",
    "New Hampshire",
    "New Jersey",
    "New Mexico",
    "New York",
    "North Carolina",
    "North Dakota",
    "Ohio",
    "Oklahoma",
    "Oregon",
    "Pennsylvania",
    "Rhode Island",
    "South Carolina",
    "South Dakota",
    "Tennessee",
    "Texas",
    "Utah",
    "Vermont",
    "Virginia",
    "Washington",
    "West Virginia",
    "Wisconsin",
    "Wyoming"
  ]

p states.find_all{|e| e.size > 10}

p "testing 1 2 3 testing 4 5 6".scan(/\d/)

str = "Leopold Auer was the teacher of Jascha Heifetz."
violinists = str.scan(/([A-Z]\w+)\s+([A-Z]\w+)/)
p violinists

violinists.each do |fname, lname|
    puts "#{lname}'s first name was #{fname}."
end

str.scan(/([A-Z]\w+)\s+([A-Z]\w+)/) do |fname, lname|
   puts "#{lname}'s first name was #{fname}."
end

"one two three".scan(/\w+/) {|n| puts "Next number: #{n}"}

line = "first_name=david;last_name=black;country=usa"
record = line.split(/=|;/)
p record

data = []
record = Hash[*line.split(/=|;/)]
data.push(record)
p data

p "a,b,c,d,e".split(/,/,3)

p "typigraphical error".sub(/i/,"o")

p "capitalize the first vowel".sub(/[aeiou]/) {|s| s.upcase}

p "capitalize every word".gsub(/\b\w/) {|s| s.upcase}

p "aDvid".sub(/([a=z])([A-Z])/, '\2\1')

p "double every word".gsub(/\b(\w+)/, '\1 \1')

p ["USA", "UK", "France", "Germany"].grep(/[a-z]/)

p ["USA", "UK", "France", "Germany"].grep(/[a-z]/).grep(/[a-z]/) {|c| c.upcase }