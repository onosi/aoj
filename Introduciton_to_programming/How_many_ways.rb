while line = gets.split.map(&:to_i) and line !=[0,0]
    counter =0
    ans = []
    line[0].times { |n|
        ans << n + 1
    }

    ans.combination(3).to_a.each do |n| 
        counter += 1 if n.inject(:+) == line[1]
    end
    puts counter
end