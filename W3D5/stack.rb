class Stack
    def initialize
      # create ivar to store stack here!
      @store = []
    end
  
    def push(el)
      # adds an element to the stack
      store << el
      self #is a stack instance, if we do not return self, we are return an array which can be manipulated using array methods instead of limiting what we can do with the stack
    end
  
    def pop
      # removes one element from the stack
      store.delete(@store[-1])
      self #again, returning the stack INSTANCE
    end
  
    def peek
      # returns, but doesn't remove, the top element in the stack
      store[-1]
    end

    private
    attr_reader :store #if this was not private, the getter would return an array, which can be manipulated using array methods
end

stk = Stack.new
p stk.push(3)
p stk.push(4)
p stk.peek
p stk.pop
p stk.store