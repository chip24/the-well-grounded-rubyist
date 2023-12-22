find_multiples = -> (x, arr) { arr.select {|el| el % x == 0 }}

find_multiples_of = find_multiples.curry
find_multiples_of_3 = find_multiples_of.(3)
find_multiples_of_5 = find_multiples_of.(5)

p find_multiples_of_3.([-3,3,4,5,6,8,9,10,12])

add = -> (a, b, c) { a + b + c }
fun = add.curry
p fun
p fun.(1,2,3)
p fun.(1).(2).(3)
p fun2 = fun.(1)
p fun2.(2,3)
p fun3 = fun.(1,2)
p fun3.(3)

sum_all = -> (*nums) { nums.reduce(:+) }
p sum_all.curry.(1,2,3)
p sum_at_least_four = sum_all.curry(4)
p sum1 = sum_at_least_four.(3,4)
p sum2 = sum1.(5)
p sum3 = sum2.(7)
p fun.(1,2,3)
p fun[1,2,3]

def add(a,b,c) ; a + b + c; end
fun = method(:add).curry
p fun.(1,2,3)
