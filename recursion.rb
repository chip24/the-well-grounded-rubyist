def fibonacci(x)
    y = 0
    z = 1

    x.times do
        temp = y
        y = z
        z = temp + y
    end

    y
end

p fibonacci(7)

def fibonacci(x)
    x <= 1 ? x : fibonacci(x-1) + fibonacci(x-2)
end

p fibonacci(7)

def sum_squares(x)
    if x == 0
        0
    else
        x**2 + sum_squares(x-1)
    end
end
p sum_squares(3)

def find_multiples(num, mult)
    (1..Float::INFINITY).lazy.select {|x| x % mult == 0}.first(num)
end

p find_multiples(3,50)
first_3_multiples = self.method(:find_multiples).curry.(3)
first_5_multiples = self.method(:find_multiples).curry.(5)
p first_3_multiples.(256)

squares = (1..Float::INFINITY).lazy.map {|x| x * x }
p squares.first(10)
p squares.first(10)[3]

def sum_squares(y)
    squares = (1..Float::INFINITY).lazy.map {|x| x * x }
    squares.first(y).sum
end

p sum_squares(5)


def sum_powers_factorial(pfact, size)
    powers = -> (power) {(1..Float::INFINITY).lazy.map {|x| x**power}}
if pfact == 1
    Array.new(size) {|x| x + 1 }
else
    [powers.call(pfact).first(size),sum_powers_factorial(pfact - 1, size)].flatten.sum
    end
end
p sum_powers_factorial(4,3)

    

