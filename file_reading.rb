full_text = File.read("collections.txt")
lines_of_text = File.readlines("collections.txt")

f = File.new("data.out", "w")
f.puts "David A. Black, Rubyist"
f.close
puts File.read("data.out")
f = File.new("data.out", "a")
f.puts "Joe Leo III, Rubyist"
f.close
puts File.read("data.out")

File.open("records.txt") do |f|
    #while record = f.gets
    f.each do |record|
        name, nationality, instrument, dates = record.chomp.split('|')
        puts "#{name} (#{dates}), who was #{nationality}, played #{instrument}."
    end
end

count = 0
total_ages = File.readlines("members.txt").inject(0) do |total,line|
    count += 1
    fields = line.split
    p fields
    age = fields[3].to_i
    total + age
end

puts "Average age of group: #{total_ages/count}."

[1,2,3,4].inject(0) {|result,element| p result + element }

count = 0
total_ages = File.open("members.txt") do |f|
    f.inject(0) do |total,line|
        count += 1
        fields = line.split
        age = fields[3].to_i
        total + age
    end
end
puts "Average age of group: #{total_ages / count}."


