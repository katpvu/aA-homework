# Now let's write a Queue class. You will need the following instance methods: enqueue(el), dequeue, and peek.

# Test your code to ensure it follows the principle of FIFO.

class Queue
    def initialize
        @queue = []
    end

    def enqueue(el)
        @queue.insert(0, el)
    end

    def dequeue
        @queue.delete(@queue[0])
    end

    def peek
        @queue.first
    end
end

p q = Queue.new
p q.enqueue(3)
p q.enqueue(4)
p q.peek
p q.enqueue(5)
p q.peek
p q.dequeue
p q