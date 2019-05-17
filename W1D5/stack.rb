class Stack
    def initialize
        @arr = []
        # create ivar to store stack here!
    end

    def push(el)
        arr << el
        # adds an element to the stack
    end

    def pop
        arr.pop
        # removes one element from the stack
    end

    def peek
        arr.last
        # returns, but doesn't remove, the top element in the stack
    end

    private

    attr_reader :arr
end
