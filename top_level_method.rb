def talk
    puts "Hello"
end
=begin
The above code is actually the followinf code in shorthand:
class Object
    private
    def talk
        puts "Hello"
    end
end
=end
    



puts "Trying 'talk' with no receiver..."
talk
puts "Trying 'talk' with an explicit receiver...
"
# This will fail because you cannot call a private mrthod with an explicit receiver/  You must call it in bareword style
obj = Object.new
obj.talk