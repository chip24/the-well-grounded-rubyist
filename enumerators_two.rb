names = %w(David Yukihiro)
e = names.to_enum
puts e.next
puts e.next
e.rewind
puts e.next

module Music
    class Scale
        NOTES = %w(c c# d d# e f f# g a a# b)
        def play
            #NOTES.each {|note| yield note }
            NOTES.to_enum
        end
    end
end

scale = Music::Scale.new
scale.play {|note| puts "Next note is #{note}"}

enum = scale.enum_for(:play)
p enum.map {|note| note.upcase}
p enum.select {|note| note.include?('f')}

animals = %w(Jaguar Turtle Lion Antelope)
puts animals.select {|n| n[0] < 'M'}.map(&:upcase).join(", ")

animals.each_slice(2).map do |predator, prey|
    p "Predator: #{predator}, Prey: #{prey}\n"
end

string = "An arbitrary string"
p string.each_byte.map{|b| b + 1}

scale.play.map {|note| puts "Next note: #{note}"}
scale.play.with_index(1) {|note, i| puts "Note #{i}: #{note}"}

class String
    def ^(key)
        kenum = key.each_byte.cycle
        each_byte.map {|byte| byte ^ kenum.next }.pack("C*")
    end
end

str = "Nice little string"
key = "secret!"
p x = str ^ key
p orig = x ^ key

def fb_calc(i)
    case 0
    when i % 15
        "FizzBuzz"
    when i % 3
        "Fizz"
    when i % 5 
        "Buzz"
    else
        i.to_s
    end
end
def fb(n)
    (1..Float::INFINITY).lazy.map {|i| fb_calc(i)}.first(n)
end

p fb(15)

data = %w[one two three]
data2 = %w[four five six]
pipeline = data
    .lazy
    .map {|item| puts "item: #{item}"; item.reverse}
    .take_while {|item| puts "item: #{item}"; item.length < 6}
    .zip(data2)

p pipeline.class
p pipeline.to_a

