length = gets.to_i
numbers = gets.split.map(&:to_i)

numbers.each_with_index do | n, i |
    j = i - 1
    while j >= 0 && numbers[ j ] > n
        numbers[ j + 1 ] = numbers[ j ]
        j -= 1
    end
    numbers[ j ] = numbers
    puts numbers.join(' ')
end