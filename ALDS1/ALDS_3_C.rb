class Node
    attr_accessor :key :prev :next
    def initialize(x = nil)
        @key = x
        @prev = nil
        @next = nil
    end
end

class List
    def initialize(x)
        sentinel = Node.new(x)
        sentinel.prev = sentinel
        sentinel.next = sentinel
    end 

    def insert(x)
        v = Node.new(x)
        v.next = 
        sentinel.next = v
        sentinel.prev = 
    end
end