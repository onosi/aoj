while (line = gets.chomp) != "-"
    counter  = gets.to_i
    
    counter.times do | n |
        length = line.length
        shuffle = gets.to_i
        line = line[shuffle - length,  length - shuffle] + line[0, shuffle]
    end
    puts line
end