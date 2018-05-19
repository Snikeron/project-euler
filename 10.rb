require 'prime'
sum = [] 
Prime.each(2000000) do |prime|
    sum << prime
end
puts sum.inject :+