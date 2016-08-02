# code from CSE12 PA5
def selection_sort arr
  puts "Original array: #{arr.to_s}"
  puts "Processing..."
  movements = 0
  comparisons = 0
  i = arr.length - 1

  i.times do
    maxpos = 0
    for k in 1..i do
      comparisons += 1
      if (arr[k] > arr[maxpos])
        maxpos = k
      end
    end
    if (i != maxpos)
      movements += 3
      temp = arr[i]
      arr[i] = arr[maxpos]
      arr[maxpos] = temp
      puts arr.to_s
    end
    i -= 1
  end
  return arr, comparisons, movements
end

array = [5, 4, 3, 2, 1]
result = selection_sort(array)
puts "result array is #{result[0].to_s}, comparisons: #{result[1]}, movements: #{result[2]}"
