a = gets
taro = 0
hanako = 0

while line = gets
    words = line.split
    if words[0] > words[1]
        taro += 3
    elsif words[0] < words[1] 
        hanako += 3
    else
        taro += 1
        hanako += 1
    end
end

puts "#{taro} #{hanako}"