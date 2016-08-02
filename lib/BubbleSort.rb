# Code basically taken from Sedgewick, "Algorithms"

def bubble_sort arr
  puts "Original array: #{arr.to_s}"
  puts "Processing..."
  swap = 0
  comparisons = 0
  for i in 0...arr.length - 1
    temp_first = arr[0]
    for j in 1...arr.length - i
      comparisons += 1
      if arr[j - 1] > arr[j]
        swap += 1
        arr[j], arr[j - 1] = arr[j - 1], arr[j]
      end
      puts arr.to_s
    end
  end
  return arr, comparisons, swap
end

array = [27, 18, 9, 25, 50, 40, 35]
result = bubble_sort(array)
puts
puts "result array is #{result[0].to_s}, comparisons: #{result[1]}, swaps: #{result[2]}"
