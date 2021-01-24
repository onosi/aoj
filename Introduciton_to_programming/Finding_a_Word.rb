w = gets.chomp
counter = 0

while (line = gets.chomp) != "END_OF_TEXT"
    counter += line.downcase.split(" ").grep(w).length
end

puts counter