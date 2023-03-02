#return true if two elements in this array add up to the target.
array = [1,2,3,4,5,6,-1,3,4,53,5]
target = 0

#quadratic -> nested loop
def non_efficient(array, target)
    array.each do |ele|
        array.each do |ele_2|
            if ele + ele_2 == target
                return true
            end
        end
    end
    return false
end

#linear -> 1 iteration through array. 
def better(array, target)
    bank = {}
    array.each do |x|
        potential_y = target - x
        if bank[potential_y]
            return true
        else
            bank[x] = true
        end
    end
    return false
end

#logarithmic 
#b_search should be performed on a SORTED ARRAY
def b_search(sorted_array, target)
    return nil if sorted_array.empty?
    middle_idx = sorted_array.length / 2
    return middle_idx if sorted_array[middle_idx] = target

    left = sorted_array.take(middle_idx)
    right = sorted_array.drop(middle_idx+1)

    case target <=> sorted_array[middle_idx]
    when -1 #left
        b_search(left, target)
    when 1 #right
        res = b_search(right, target)
        res.nil? ? nil : res + 1 + middle_idx
    end
end

#linearithmic - combination of linear + logarithmic
# cuts in half, and in helper function -> iteration.