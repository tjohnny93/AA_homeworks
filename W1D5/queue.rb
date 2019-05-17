class Queue
    def initialize
        @arr = []
    end

    def enqueue(el)
        arr << el
        return el
    end

    def dequeue
        arr.shift
    end

    def peek
        arr.shift
    end

    private

    attr_reader :arr

end