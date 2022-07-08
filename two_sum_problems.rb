require "byebug"

def bad_two_sum?(arr, num)
    (0...arr.length).each do |i|
        (i+1...arr.length).each do |j|
            return true if arr[i] + arr[j] == num
        end
    end

    false
end

arr = [0, 1, 5, 7]
# p bad_two_sum?(arr, 6) # => should be true
# p bad_two_sum?(arr, 10) # => should be false
# p bad_two_sum?(arr, 8) # => should be true


def okay_two_sum?(arr, num)
    sorted_arr = arr.sort
    sorted_arr.each_with_index do |ele, i|
        #debugger
        target = num - ele
        indx = binary_search(sorted_arr, target)
        return true if indx != i && indx != nil
    end

    false
end


def binary_search(an_array, item)
    first = 0
    last = an_array.length - 1

    while first <= last
        i = (first + last) / 2

        if an_array[i] == item
            return i
        elsif an_array[i] > item
            last = i - 1
        elsif an_array[i] < item
            first = i + 1
        else
            return nil
        end
    end
end



arr = [5, 5, 6, 7, 8, 9]

#p binary_search(arr, 11)

# p okay_two_sum?(arr, 10) # => should be true
# p bad_two_sum?(arr, 10) # => should be false
# p bad_two_sum?(arr, 8) # => should be true

#O(nlogn)
def best_two_sum?(arr, num)
    hash = Hash.new(0)
    arr.each_with_index do |ele, i|
        hash[i] = ele
    end

    hash.each do |key, value|
        target = num - value
        hash.delete(key)
        return true if hash.has_value?(target)
    end

    false
end

arr = [5, 6, 7, 8, 9]
p best_two_sum?(arr, 10)
# p okay_two_sum?(arr, 6) # => should be true
# p bad_two_sum?(arr, 10) # => should be false
# p bad_two_sum?(arr, 8) # => should be true

#O(n)