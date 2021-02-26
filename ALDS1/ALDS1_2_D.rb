def insertionSort(numbers, n, g)
    for i in (g..(n-1)) do
        v = numbers[i]
        j = i - g
        while j >= 0 && numbers[ j ] > v
            numbers[ j + g ] = numbers[ j ]
            j -= g
            @cnt += 1
        end
        numbers[ j + g ] = v
    end
end

def shellSort(numbers, n)
    @cnt = 0
    g = []
    interval = 1
    begin
        g << interval
        interval = g.last * 3 + 1
    end while interval < n
    g.reverse!
    m = g.length
  
    for i in 0..(m-1)
        insertionSort(numbers, n, g[i])
    end

    puts m
    puts g.join(" ")
    puts @cnt
end

n = gets.to_i
arr = Array.new(n)
n.times{|i| arr[i] = gets.to_i}
shellSort(arr, n)
puts arr
