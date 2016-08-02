def selection_sort arr
  puts "Original array: #{arr.to_s}"
  puts "Processing..."
  swaps = 0
  comparisons = 0

  for i in 0...(arr.length - 1)
    minpos = i
    for k in (i+1)...arr.length do
      comparisons += 1
      if (arr[k] < arr[minpos])
        minpos = k
      end
    end
    if (i != minpos)
      swaps += 1
      arr[i], arr[minpos] = arr[minpos], arr[i]
    end
    puts "#{arr.to_s} -> done with #{i+1} loop(s)"
  end
  return arr, comparisons, swaps
end

array = [27,18,9,25,50,40,35]
result = selection_sort(array)
puts
puts "result array is #{result[0].to_s}, comparisons: #{result[1]}, swaps: #{result[2]}"
