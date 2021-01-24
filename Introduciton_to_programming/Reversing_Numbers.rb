number = gets.to_i
numbers = gets.split(' ').map(&:to_i)
answer = []

numbers.each_with_index do | n , i |
    answer[number - i - 1] = n
end

puts answer.join(" ")