def insertion_sort arr
  puts "Original array: #{arr.to_s}"
  puts "Processing..."
  insertions = 0
  comparisons = 0
  for i in 1...arr.length
    temp = arr[i]
    j = i
    while (j > 0 && arr[j - 1] > temp)
      comparisons += 1
      arr[j] = arr[j - 1] # move one position to the right.
      j -= 1
      puts arr.to_s
    end
    comparisons += 1 if j > 0
    insertions += 1
    arr[j] = temp
    puts "#{arr.to_s} -> done with #{i} loop(s)"
  end
  return arr, comparisons, insertions
end

array = [5, 2, 4, 6, 1, 3]
result = insertion_sort(array)
puts "result array is #{result[0].to_s}, comparisons: #{result[1]}, insertions: #{result[2]}"
