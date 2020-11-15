while (size = gets.to_i ) != 0
    dataset = gets.split.map(&:to_f)
    mean = dataset.reduce(:+) / size
    puts Math.sqrt( (dataset.reduce(0) { |a, b| a + (b - mean)**2 }) / size )
end