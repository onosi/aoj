x = gets.split.map(&:to_i)
n = gets.to_s.split('')

while line = gets.split.map(&:to_i)
    
end

def Dice(x, alfabets)
    top = x[0]
    s = x[1]
    n = x[4]
    e = x[2]
    w = x[3]
    bottom = x[5]
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
