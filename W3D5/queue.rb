# Now let's write a Queue class. You will need the following instance methods: enqueue(el), dequeue, and peek.

# Test your code to ensure it follows the principle of FIFO.

class MyQueue
    def initialize
        @queue = []
    end

    #add people to the line = add to the front
    def enqueue(el)
        queue.unshift(el)
        self
    end

    #the first in line is the last element in the array
    def dequeue
        queue.pop
    end

    #shows the first in line
    def peek
        queue.last
    end

    def show #return a copy of the array, it will affect the copy and not the original, so who cares what they do.
        return queue.dup
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
p q.dequeue
p q.show