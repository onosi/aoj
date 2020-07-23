while (a ,b = gets.split(' ').map(&:to_i)) != [0, 0]
    puts "#" * b
    (a - 2).times{ puts  "#" + "." * (b - 2) + "#" }
    puts "#" * b
    puts
end