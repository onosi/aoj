while (a ,b = gets.split(' ').map(&:to_i)) != [0, 0]
    even_string = "#." * (b / 2) + "#" * (b % 2)
    odd_string = ".#" * (b / 2) + "." * (b % 2)
    a.times { |n|
        if n.odd?
            puts odd_string 
        else
            puts even_string
        end
    }
    puts
end