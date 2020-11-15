n = gets.to_i
x = gets.split.map(&:to_f)
y = gets.split.map(&:to_f)

def caluculate(x, y, n)
    if n == :Mugen
        max = 0
        x.each_with_index do | a , i |
            max = (a - y[i]).abs if (a - y[i]).abs > max
        end
        return max
    end

    sum = 0.0
    x.each_with_index do | a , i |
        sum += ((a - y[i]).abs ** n) 
    end
    sum ** (1/n.to_f)
end

printf("%.6f\n", caluculate(x,y,1))
printf("%.6f\n", caluculate(x,y,2))
printf("%.6f\n", caluculate(x,y,3))
printf("%.6f\n", caluculate(x,y,:Mugen))