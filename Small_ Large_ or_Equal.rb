a ,b = gets.split.map(&:to_i)

if a > b
    puts "a > b"
    return
end

if a < b
    puts "a < b"
    return
end

puts "a == b"