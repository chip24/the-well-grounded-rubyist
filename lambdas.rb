lam = lambda { puts "A lambda!" }
lam.call

lam = lambda {|x| p x}
lam.call(1)
#lam.call

def return_test
    l = lambda { return }
    l.call
    puts "Still here!"
    p = Proc.new { return }
    p.call
    puts "You won't see this message!"
end

return_test

lam = -> { puts "hi" }
lam.call

mult = ->(x,y) { x * y }
p mult.call(3,4)
