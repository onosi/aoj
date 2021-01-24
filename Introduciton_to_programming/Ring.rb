s = gets.chomp
t = gets.chomp

ring = (s * 2)

if ring.include?(t)
    puts "Yes"
else
    puts "No"
end