n = gets.to_i

first_num = gets.to_i
max = -Float::INFINITY
min = first_num

while num = gets
    num = num.to_i
    max = [max, num - min].max
    min = [min, num].min
end

puts max