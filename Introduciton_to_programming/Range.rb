a ,b ,c = gets.split.map(&:to_i)

if a < b and b < c 
    puts "Yes" 
    return
end

puts "No"