puts "Reading Fahrenheit temperature from file..."
num = File.read("temp.dat")
fahrenheit = num.to_i
celsius = (fahrenheit - 32) * 5 / 9
puts "Writing celsius temperature to file 'temp.out'"
fh = File.new("temp.out", "w")
fh.puts celsius
fh.close 