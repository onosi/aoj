answer = 0
a = gets.to_i
while num = gets
    num = num.to_i
    2.upto(Math.sqrt(num).floor) do | n |
        if num % n == 0
            answer += 1
            break
        end
    end
end

puts a - answer