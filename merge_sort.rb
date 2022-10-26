#Build a method that takes in an array and returns a sorted array, using a recursive merge sort methodology

def merge_sort(array)
    
    if array.length < 2        
        array
    else
        #Sort the left half of the array assuming n > 1    
        left_half = merge_sort(array[0...array.length / 2])
        #Sort the right half of the array assuming n > 1
        right_half = merge_sort(array[array.length / 2...array.length])
        merge(left_half,right_half)
    end
end

#Merge the two halves together
def merge(a_array, b_array, full_array = [])
    (a_array.length + b_array.length).times do 
        if a_array.empty?
            full_array << b_array.shift
        elsif b_array.empty?
            full_array << a_array.shift
        else
            comparison = a_array <=> b_array
            if comparison == -1
                full_array << a_array.shift
            elsif comparison == 1
                full_array << b_array.shift
            else
                full_array << a_array.shift 
            end
        end
    end
    full_array    
end

arr = []
50.times do 
    arr << rand(300)
end

puts merge_sort(arr)
