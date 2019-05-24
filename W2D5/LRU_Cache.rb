  class LRUCache
    def initialize
        @size = size
        @cache = []

    end

    def count
      # returns number of elements currently in cache
      @cache.count
    end

    def add(el)
      # adds element to cache according to LRU principle
      if @cache.include?(ele)
        @cache.delete(ele)
        @cache << ele
      elsif count >= @size
        @cache.shift
        @cache << ele
      else
        @cache << ele
      end



    end

    def show
      # shows the items in the cache, with the LRU item first
      p @cache
      nil
    end

    private
    # helper methods go here!

  end