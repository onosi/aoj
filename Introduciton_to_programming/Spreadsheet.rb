r,c = gets.split.map(&:to_i)
sum = Array.new(c,0)
while line = gets
    ans = line.split.map(&:to_i)
    ans.each_with_index do |n , i|
        print "#{n} "
        sum[i] += n 
    end
    puts ans.inject(:+)
end

sum.each do |n|
    print "#{n} "
end
puts sum.inject(:+)