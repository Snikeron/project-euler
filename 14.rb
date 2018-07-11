def num_pattern(num)
    count = 0
    # puts num
    until num == 1
        if num % 2 == 0
            num /= 2
            # puts num
            count += 1
        else
            num = (num * 3) + 1
            count += 1
            # puts num
        end
    end

    return count + 1
end

# puts num_pattern(15)

results = []
numbers = [*1..1e6]

for number in numbers
    results << [num_pattern(number), number]
end

puts results.max