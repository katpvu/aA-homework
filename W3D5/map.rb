class MyMap
    def initialize
        @map = {}
    end

    def set(key, value)
        map[key] = value
        self
    end

    def get(key)
        map[key]
    end

    def delete(key)
        map.delete_if {|k, v| k == key }   #=> {"a"=>100}
    end

    def show
        return map.dup
    end

    private 
    attr_reader :map
end

p map = MyMap.new
puts "add k-v pair"
p map.set(3, 5)
# p map.show
p map.set(3, 7)
p map.show
p map.set(4, 8)
p map.delete(3)
p map.show
p map.get(4)