class Stack
    def initialize
        @top = 0
        @s = []
    end

    def empty?
        @top == 0
    end

    def full?
        @top >= @max - 1
    end

    def push(x)
        @s.push(x)
    end

    def pop
        @s.pop
    end
end

operands = ["+", "-", "*"]
input = gets.split(" ")
stack = Stack.new

input.each do |n|
    if operands.include?(n)
        a = stack.pop()
        b = stack.pop()
        stack.push(eval(b + n + a).to_s)
    else
        stack.push(n)
    end 
end
puts stack.pop