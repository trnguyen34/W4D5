def windowed_max_range(array, window_size)
    current_max_range = nil 
    
    (0...array.length).each do |i|
        min = array[i...window_size+1].min
        max = array[i...window_size+1].max
        sum = max - min
        if current_max_range == nil || current_max_range < sum
            current_max_range = sum
        end
    end

    current_max_range
end

p windowed_max_range([1, 0, 2, 5, 4, 8], 2) == 4