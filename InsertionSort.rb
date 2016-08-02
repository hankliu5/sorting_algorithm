def insertion_sort arr
  puts "Original array: #{arr.to_s}"
  puts "Processing..."
  movements = 0
  comparisons = 0
  for i in 1...arr.length
    movements += 1
    temp = arr[i]
    j = i
    while (j > 0 && arr[j - 1] > temp)
      comparisons += 1
      movements += 1
      arr[j] = arr[j - 1]
      j -= 1
    end
    comparisons += 1 if j > 0
    movements += 1
    arr[j] = temp
    puts arr.to_s
  end
  return arr, comparisons, movements
end

array = [5, 4, 3, 2, 1]
result = insertion_sort(array)
puts "result array is #{result[0].to_s}, comparisons: #{result[1]}, movements: #{result[2]}"
