class Stack
    def initialize
      # create ivar to store stack here!
      @stack = []
    end
  
    def push(el)
      # adds an element to the stack
      @stack << el
    end
  
    def pop
      # removes one element from the stack
      @stack.delete(@stack[-1])
    end
  
    def peek
      # returns, but doesn't remove, the top element in the stack
      @stack[-1]
    end
end

stk = Stack.new
p stk.push(3)
p stk.push(4)
p stk.peek
p stk.pop
p stk