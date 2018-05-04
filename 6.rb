# The sum of the squares of the first ten natural numbers is,
# 1^2 + 2^2 + ... + 10^2 = 385

# The square of the sum of the first ten natural numbers is,
# (1 + 2 + ... + 10)2 = 552 = 3025

# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.
# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

# sum from 1 to n = n(n+1) / 2

sum_of_squares = 1
i = 2
until i > 100
    sum_of_squares += i**2
    i += 1
end
puts sum_of_squares

x = 100
square_of_sum = (x * (x + 1) / 2)**2

puts square_of_sum - sum_of_squares