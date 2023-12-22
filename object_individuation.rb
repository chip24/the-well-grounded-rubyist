require 'active_support/all'

puts "David".reverse

class String
    alias __old_reverse__ reverse
    def reverse
        $stderr.puts "Reversing a string!"
        __old_reverse__
    end
end
puts "David".reverse

puts Time.now.to_s
puts Time.now.to_formatted_s(:number)
puts Time.now.to_formatted_s(:db)

module Makers
    def makes
        %w{ Honda Ford Toyota Chevrolet Volvo }
    end
end

class Car
    extend Makers
end

p Car.singleton_class.ancestors

module GsubBangModifier
    def gsub!(*args, &block)
    super || self
    end
end
str = "Hello there!"
str.extend(GsubBangModifier)
str.gsub!(/zzz/, "abc").reverse!
puts str

module Shout
    refine String do
        def shout
            self.upcase + "!!!"
        end
    end
end

class Person
    attr_accessor :name
    using Shout
    def announce
        puts "Announcing #{name.shout}"
    end
end
david = Person.new
david.name = "David"
david.announce





