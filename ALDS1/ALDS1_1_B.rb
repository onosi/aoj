x, y = gets.split.map(&:to_i)

def gcd (x, y)
    if x < y
        tmp = x
        x = y
        y = tmp
    end

    if y == 0
        return x
    end
    
    gcd(y , x%y)

end

puts gcd(x, y)