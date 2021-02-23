n = gets.to_i
numbers = gets.split.map(&:to_i)
count = 0

for k in 1..(n-1) do
    for i in (k..(n-1)).to_a.reverse do
        tmp = 0
        if numbers[ i ]< numbers[ i - 1 ]
            tmp = numbers[i]
            numbers[ i ] = numbers[ i - 1 ]
            numbers[ i - 1 ] = tmp
            count += 1
        end
    end
end

puts numbers.join(" ")
puts count