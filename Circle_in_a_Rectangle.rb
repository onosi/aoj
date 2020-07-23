W, H, x, y, r = gets.split.map(&:to_i)

if x < 0 or W < x or (W - x).abs < r
    puts "No"
    return
end

if y < 0 or H < y or (H - y).abs < r
    puts "No"
    return
end

puts "Yes"