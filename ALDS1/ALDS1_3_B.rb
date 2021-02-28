class Queue
    def initialize(n)
        @head, @tail = 0, 0
        @max = n
        @q = []
    end

    def empty?
        @head == @tail
    end

    def full?
        @head == ((@tail + 1) % @max)
    end

    def enqueue(x)
        return "over flow" if full?
        @q[@tail] = x
        if @tail + 1 == @max
            @tail = 0
        else
            @tail += 1
        end
    end

    def dequeue()
        return "under flow" if empty?
        x = @q[@head]
        if @head + 1 == @max
            @head = 0
        else
            @head += 1
        end
        x
    end
end

n, time = gets.split(" ").map(&:to_i)
queue = Queue.new(n + 1)
time_used = 0

while (line = gets) != nil
    queue.enqueue(line.split(" "))
end

while !queue.empty?
    job = queue.dequeue
    if job[1].to_i <= time
        time_used += job[1].to_i
        puts "#{job[0]} #{time_used}"
    else
        job[1] = job[1].to_i - time
        time_used += time
        queue.enqueue(job)
    end
end
