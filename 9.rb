# 

def sq_root_is_int(num)
    if num % Math.sqrt(num) == 0
        true
    else
        false
    end
end
result = 0
until (result) == 1000
    a = rand(500)
    b = rand(500)
    if a != 0 && b != 0 && b > a
        c_square = a**2 + b**2
        if sq_root_is_int(c_square)
            c = Math.sqrt(c_square)
            result = a + b + c
            puts "#{a} + #{b} + #{c} = #{result}"           
        end
    end
end
puts "The product of abc is #{a*b*c}."

# def divisible?(n)
#     (20..1).all? { |x| n % x == 0 }
# end

# result = []
# until result.length == 16
#     a = rand(500)
#     b = rand(500)
#     if a != 0 && b != 0 && b > a
#         c_square = a**2 + b**2
#         if sq_root_is_int(c_square) && Math.sqrt(c_square) <= 100
#             c = Math.sqrt(c_square)
#             unless result.include? [a, b, c] && result.each {|i| divisible?(i)}
#                 result << [a, b, c]
#             end          
#         end
#     end
# end
# print result