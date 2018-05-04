# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

# Find the largest palindrome made from the product of two 3-digit numbers.

x = 100
y = 100
array = []

until y == 999
    until x == 999
        result = x * y
        if result.to_s == result.to_s.reverse
            array << result
        end
        x += 1
    end
    y += 1
    x = 100
end
print array

puts "\nLargest number in array is: #{array.max}"
