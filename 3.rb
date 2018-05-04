# The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 600851475143 ?

x = 600851475143.0
i = 2.0
array = []
until x / i == 1
    result = x / i
    puts "#{i}. #{result}"
    if result % 1 == 0
        array << i
        x /= i
    else
    end
    i += 1
end
array << i
print array