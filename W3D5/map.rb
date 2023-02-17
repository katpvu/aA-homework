class Map
    def initialize
        @map = []
    end

    def set(key, value)
        (0...@map.length).each do |i|
            @map[i][1] = value if @map[i][0] == key
        end
        @map << [key, value] if @map.none? {|pair| pair[0] == key}
    end

    def get(key)
        return nil if @map.none? {|pair| pair[0] == key}
        (0...@map.length).each do |i|
            return @map[i][1] if @map[i][0] == key
        end
    end

    def delete(key)
        @map.each_with_index {|pair, i| @map.delete(@map[i]) if pair[0] == key }
    end

    def show
        @map
    end
end

p map = Map.new
puts "add k-v pair"
p map.set(3, 5)
# p map.show
p map.set(3, 7)
p map.show
p map.set(4, 8)
p map.delete(3)