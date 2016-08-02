def insertion_sort arr
  puts "Original array: #{arr.to_s}"
  puts "Processing..."
  insertions = 0
  comparisons = 0
  for i in 1...arr.length
    temp = arr[i]
    j = i
    while (j > 0)
      comparisons += 1
      break if arr[j - 1] <= temp
      arr[j] = arr[j - 1] # move one position to the right.
      j -= 1
      puts arr.to_s
    end
    insertions += 1
    arr[j] = temp
    puts "#{arr.to_s} -> done with #{i} loop(s)"
  end
  return arr, comparisons, insertions
end

array = [1,2,3,4,5]
result = insertion_sort(array)
puts "result array is #{result[0].to_s}, comparisons: #{result[1]}, insertions: #{result[2]}"
