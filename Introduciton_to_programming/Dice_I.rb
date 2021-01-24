x = gets.split.map(&:to_i)
n = gets.to_s.split('')


def Dice(x, alfabets)
    numbers = [1, 2, 3, 4, 5, 6]
    top = 1
    s = 2
    n = 5
    e = 3
    w = 4
    bottom = 6
    alfabets.each do | alfa |
        case  alfa
        when "S" then
            tmp = top
            bottom = s
            top = 7 - s
            s = tmp
            n = 7 -tmp 
        when "N" then
            tmp = top
            bottom = n
            top = 7 - n
            n = tmp
            s = 7 -tmp 
        when "E" then
            tmp = top
            bottom = e
            top = 7 - e
            e = tmp
            w = 7 -tmp 
        when "W" then
            tmp = top
            bottom = w
            top = 7 - w
            w = tmp
            e = 7 -tmp 
        end
    end
    x[ top - 1 ]
end

puts Dice(x,n)