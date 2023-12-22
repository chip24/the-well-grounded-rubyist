File.open("hits.txt") do |f|
    f.each do |hit|
        name, artist, year = hit.chomp.split('/')
        puts "\"#{name}\", performed by #{artist}, reached #1 in #{year}."
    end
end

count = 0
years = []
total_years = File.open("hits.txt") do |f|
    f.inject(0) do |total, line|
    count += 1
    fields = line.split('/')
    p fields
    year = fields[2].to_i
    p year
    years << year
    total + year
    end
end

p years
most_common_year = years.max_by {|y| years.count(y)}

puts "The year with the most hits between 2010 and 2014 was #{most_common_year}."
