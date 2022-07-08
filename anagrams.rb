require "byebug"

def first_anagram?(str1, str2)
    arr = str1.split("")
    arr = arr.permutation.to_a
    arr2 = str2.split("")
    arr.include?(arr2)
end

# p first_anagram?("gizmo", "sally")    #=> false
# p first_anagram?("elvis", "lives")
# p first_anagram?("john", "ohnj")
# O(n!)

def second_anagram?(str1, str2)
    arr = str2.split("")
    str1.each_char do |char|
        return false if arr.index(char) == nil
        arr.delete_at(arr.index(char))
    end

    return arr.empty?
end

# p second_anagram?("gizmo", "sally")    #=> false
# p second_anagram?("elvis", "lives")
# p second_anagram?("john", "ohnj")
# O(n^2)

def third_anagram?(str1, str2)
    sorted_ str1 = str1.sort
    sorted_str2 = str2.sort

    sorted_str1 == sorted_str2
end

# p second_anagram?("gizmo", "sally")    #=> false
# p second_anagram?("elvis", "lives")
# p second_anagram?("john", "ohnj")
# O(n log n)

def fourth_anagram?(str1, str2)
    hash1 = Hahs.new(0)
    hash2 = Hahs.new(0)

    str1.each_char  { |char| hash1[char] += 1 }
    str2.each_char { |char| hash2[char] += 1 }
    hash1 == hash2
end

p second_anagram?("gizmo", "sally")    #=> false
p second_anagram?("elvis", "lives")
p second_anagram?("john", "ohnj")
O(n)
