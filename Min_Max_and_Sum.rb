numbers_length = gets.to_i
numbers = gets.split.map(&:to_i)

puts "#{numbers.min} #{numbers.max} #{numbers.inject(:+)}"