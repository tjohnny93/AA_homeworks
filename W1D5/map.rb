class Map
    def initialize
        @arr = []
    end

    def set(k, v)
        pair_i = arr.i.each { |pair| pair[0] == k }
        if pair_i
            arr[pair_i][1] = v
        else
            arr << ([k,v])
        end
        v
    end

    def get(k)
        arr.each { |pair| return pair[1] if pair[0] == key }
        nil
    end

    def delete(k)
        v = get(k)
        arr.reject! { |pair| pair[0] == key }
        v
    end

    def show
        deep_dup(arr)
    end

    private

    attr_reader :arr

    def deep_dup(arr)
        arr.map { |ele| ele.is_a?(Array) ? deep_dup(ele) : ele }
    end
end