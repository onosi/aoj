n = gets.to_i
numbers = gets.split.map(&:to_i)
count = 0

for i in 0..(n-1)
    tmp = 0
    minj = i
    for j in (i + 1)..(n-1) do
        if  numbers[ minj ] > numbers[ j ]
            minj = j
        end
    end

    tmp = numbers[ minj ]
    numbers[ minj ] =  numbers[ i ]
    numbers[ i ] = tmp

    count += 1 if minj != i
end


puts numbers.join(" ")
puts count