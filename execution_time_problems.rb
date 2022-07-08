require "byebug"
# def my_min(array)
#     min = array[0]
#     (0...array.length).each do |i|
#         ele1 = array[i]
#         (0...array.length).each do |j|
#             ele2 = array[j]
#             if ele2 < min
#                 min = ele2
#             end
#         end
#     end

#     min
# end

def my_min(array)
    min = array[0]
    # (0...array.length).each do |i|
    #     if  array[i] < min
    #         min = array[i]
    #     end
    # end

    array.each do |ele|
        min = ele if ele < min
    end

    min
end

# list = [0, 3, 5, 4, -5, 10, 1, 90]
# p my_min(list)


# def largest_contiguous_subsum(list)
#     subarray = []
#     (0...list.length).each do |i|
#         (i...list.length).each do |j|
#             subarray << list[i..j]
#         end
#     end

#     sum = subarray[0].sum
#     subarray.each do |sublist|
#         sum = sublist.sum if sublist.sum > sum
#     end

#     sum
# end

def largest_contiguous_subsum(list)
    largest_sum = list.sum
    current = list.first
    (1...list.length).each do |i|
        current = 0 if current < 0
        current += list[i]
        largest_sum = current if current > largest_sum
    end

    largest_sum
end

list = [2, 3, -6, 7, -6, 7]
list2 = [-5, -1, -3]
list3 = [4, -3, 4, 0, -2]
p largest_contiguous_subsum(list)
p largest_contiguous_subsum(list2)
p largest_contiguous_subsum(list3)






