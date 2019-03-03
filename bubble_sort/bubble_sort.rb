def bubble_sort array
  n = array.length
  loop do
    swapped = false

    (n-1).times do |i|
        if array[i] > array[i + 1]
            array[i], array[i + 1] = array[i + 1], array[i]
            swapped = true
        end
    end
    break if swapped == false
  end
  array
end


def bubble_sort_by array
    n = array.length
    n.times do 
        array.each_with_index do |x, i|
            if array[i+1].is_a? String and yield(array[i], array[i+1]) > 0
                array[i], array[i+1] = array[i+1], array[i]
            end
        end
    end
    array

end
