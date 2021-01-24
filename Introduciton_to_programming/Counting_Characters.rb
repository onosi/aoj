alphabets = ("a".."z").to_a
ans = Array.new(alphabets.length, 0)

while line = gets
    alphabets.each_with_index do |n, i|
        ans[i] +=  line.downcase.split("").grep(n).length
    end
end

alphabets.each_with_index do |n, i|
    puts "#{alphabets[i]} : #{ans[i]}"
end