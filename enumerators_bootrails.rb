nums = [1,2,3]
nums.each {|i| puts "* #{i}"}

fighter = "Jackie"
fighters_list = %w[Bruce Rocky Rambo]

#for fighter in fighters_list
#    puts fighter
#end

fighters_list.each {|fighter| puts fighter}
puts "Your fighter has changed => " + fighter

digits = (1..10).to_a

def odd_digits(digits)
    index = -1
    Enumerator.new do |yielder|
        loop do
            index += 1
            yielder << digits[index] if digits[index] % 2 == 0
        end
    end
end

puts odd_digits(digits).first(4)
