puts "reading Celsius temperature from data file..."
num = File.read('temp.dat')
celsius = num.to_i
fahrenheit = (celsius * 9 / 5) + 32
puts "Saving Fahrenheit temperature to output file 'temp.out"
fh = File.new("temp.out", "w")
fh.puts fahrenheit
fh.close