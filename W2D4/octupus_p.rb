def biggest_fish(fishes)
    fishes.each_with_index do |fish1, i1|
        max = true
        fishes.each_with_index do |fish2, i2|
            next if i1 == i2
            max = false if fish2.length > fish1.length
        end

        return fish1 if max
    end
end

class Array
    def merge_sort(&prc)
        prc ||= Proc.new { |x,y| x <=> y}

        return self if count <= 1

        mid = count / 2
        left = self.take(mid).merge_sort(&prc)
        right = self.drop(mid).merge_sort(&prc)

        Array.merge(left, right, &prc)
    end

    private
    def self.merge(left, right, &prc)
        result = []

        until left.empty? || right.empty?
            case prc.call(left.first, right.first)
            when -1
                result << left.shift
            when 0
                result << left.shift
            when 1
                result << right.shift
            end
        end

        result.concat(left)
        result.concat(right)
        result
    end
end

def nlogn_b_fish(fishes)
    prc = Proc.new { |x, y| y.length <=> x.length }
    fishes.merge_sort(&prc)[0]
end

def linear_b_fish(fishes)
    b_fish = fishes.first

    fishes.each do |fish|
        if fish.length > b_fish.length
            b_fish = fish
        end
    end

    b_fish
end

def slow_dance(dir, tiles)
    tiles.each_with_index do |tile, i|
        return i if tile == dir
    end
end

tiles_hash = {
    "up" => 0,
    "right-up" => 1,
    "right"=> 2,
    "right-down" => 3,
    "down" => 4,
    "left-down" => 5,
    "left" => 6,
    "left-up" => 7
}

def fast_dance(dir, tiles_hash)
    tiles_hash[dir]
end
