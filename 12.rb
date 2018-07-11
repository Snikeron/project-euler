# i = 1
# j = 2
# sum = i + j
# pattern_sequence = [i]
# num_divisors = ->n{(1..n).count{|i|n%i==0}}

# until num_divisors[sum] > 500
#     pattern_sequence << sum
#     j += 1
#     sum += j
# end

# # Operation took 20542.246 seconds.
# puts sum # 76576500
# puts "There are #{pattern_sequence.length} numbers in the sequence." # There are 12374 numbers in the sequence.
# print pattern_sequence 

require 'prime'

def length_factors_of(number)
  primes, powers = number.prime_division.transpose
  exponents = powers.map{|i| (0..i).to_a}
  divisors = exponents.shift.product(*exponents).map do |powers|
    primes.zip(powers).map{|prime, power| prime ** power}.inject(:*)
  end
  divisors.length;
end

current_triangle = 28;
current_stage = 7;

# 256 combination
fixed_combination = 1 * 2 * 3 * 4 * 5 * 6 * 7 * 8 * 9;
# 1 more value will create 512 combination
last_value = 10;
min_combination = fixed_combination * last_value;

while (current_triangle < min_combination)
  current_stage = current_stage + 1;
  current_triangle = current_triangle + current_stage;
end

p current_triangle;

while (length_factors_of(current_triangle) < 500) do
    current_stage = current_stage + 1;
    current_triangle = current_triangle + current_stage;
end

p current_stage;
p current_triangle;
