length = gets.to_i
numbers = gets.split.map(&:to_i)

numbers.each_with_index do | n, i |
    j = i - 1
    while j >= 0 && numbers[ j ] > n
        numbers[ j + 1 ] = numbers[ j ]
        numbers[ j ] = n
        j -= 1
    end
    puts numbers.join(' ')
end