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
    sorted_arr.each do |ele|
        target = num - ele
        return true if binary_search(sorted_arr, target)
    end

    false
end


def binary_search(an_array, item)
    first = 0
    last = an_array.length - 1

    while first <= last
        i = (first + last) / 2

        if an_array[i] == item
            return true
        elsif an_array[i] > item
            last = i - 1
        elsif an_array[i] < item
            first = i + 1
        else
            return false
        end
    end
end

#p binary_search([1, 2, 3, 4, 5, 6, 7, 8, 9], 7) 
# p okay_two_sum?(arr, 6) # => should be true
# p bad_two_sum?(arr, 10) # => should be false
# p bad_two_sum?(arr, 8) # => should be true

#O(nlogn)
def best_two_sum?(arr, num)
    hash = Hash.new(0)
    arr.each do |ele|
        hash[ele] += 1
    end

    hash.each do |k, v|
        target = num - k
        return if hash.has_key?(target)
    end

    false
end

p okay_two_sum?(arr, 6) # => should be true
p bad_two_sum?(arr, 10) # => should be false
p bad_two_sum?(arr, 8) # => should be true

#O(n)