max_number = gets.to_i
answers = []

(1..max_number).each do |n|
    answers << n if n % 3 == 0 or n.to_s.include?("3")
end

puts " " + answers.join(' ')
