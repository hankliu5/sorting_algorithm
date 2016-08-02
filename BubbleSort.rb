# Code basically taken from Sedgewick, "Algorithms"

def bubble_sort arr
  movements = 0
  comparisons = 0
  loop do
    movements += 1
    temp_first = arr[0]
    for i in 1...arr.length
      comparisons += 1
      if arr[i - 1] > arr[i]
        movements += 3
        temp = arr[i]
        arr[i] = arr[i - 1]
        arr[i - 1] = temp
      end
    end
    comparisons += 1
    break if temp_first == arr[0]
  end
  return arr, comparisons, movements
end

array = [3, 2, 1]
result = bubble_sort(array)
puts "result array is #{result[0].to_s}, comparisons: #{result[1]}, movements: #{result[2]}"
