S = Array.new(13,false)
H = Array.new(13,false)
C = Array.new(13,false)
D = Array.new(13,false)

numbers = gets.to_i
numbers.times do | n |
    a,b = gets.split(' ')
    b = b.to_i
    case a
    when "S"
        S[b-1] = true
    when "D"
        D[b-1] = true
    when "C"
        C[b-1] = true
    when "H"
        H[b-1] = true        
    end
end

S.each_with_index do |n, i|
    puts "S #{i + 1}" if n == false
end
H.each_with_index do |n, i|
    puts "H #{i + 1}" if n == false
end
C.each_with_index do |n, i|
    puts "C #{i + 1}" if n == false
end
D.each_with_index do |n, i|
    puts "D #{i + 1}" if n == false
end