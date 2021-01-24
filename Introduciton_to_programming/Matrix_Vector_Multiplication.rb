n, m = gets.split(' ').map(&:to_i)
matrix = []
vector = []
n.times do
    matrix << gets.split(' ').map(&:to_i)
end

m.times do
    vector << gets.to_i
end

matrix.each do |n|
    sum = 0
    m.times do |i|
        sum += n[i] * vector[i]
    end
    puts sum
end