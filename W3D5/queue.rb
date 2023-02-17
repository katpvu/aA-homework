# Now let's write a Queue class. You will need the following instance methods: enqueue(el), dequeue, and peek.

# Test your code to ensure it follows the principle of FIFO.

class MyQueue
    def initialize
        @queue = []
    end

    def enqueue(el)
        # queue.unshift(el)
        queue.insert(0, el)
        self
    end

    def dequeue
        queue.shift
        # queue.delete(queue[0])
    end

    def peek
        queue.first
    end

    def show

    end

    def size
        queue.length
    end

    def empty?
        queue.empty?
    end

    

    private
    attr_reader :queue
end

p q = MyQueue.new
p q.enqueue(3)
p q.enqueue(4)
# p q.peek
# p q.enqueue(5)
# p q.peek
# p q.dequeue
# p q