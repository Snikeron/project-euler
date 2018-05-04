# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

x = (1..20).to_a
i = 1.0 # Will take a while -- to find answer, start from 232000000
result = []

until result.length == 20
    i += 1
    result = []
    x.each { |num| 
        if (i / num) % 1 == 0
            result << num
        end
    }
    puts "#{i}. #{result}"
end

puts "\n\n#{i} is evenly divisible by #{result}"