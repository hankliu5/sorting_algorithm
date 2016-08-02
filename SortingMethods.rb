module SortingMethods
  def SortingMethods.bubble_sort arr
    puts "Processing bubble sort..."
    swaps = 0
    comparisons = 0
    for i in 0...arr.length - 1
      temp_first = arr[0]
      for j in 1...arr.length - i
        comparisons += 1
        if arr[j - 1] > arr[j]
          swaps += 1
          arr[j], arr[j - 1] = arr[j - 1], arr[j]
        end
        if j == (arr.length - i - 1)
          puts "#{arr.to_s} -> done with #{i+1} loop(s)"
        else
          puts arr.to_s
        end
      end
    end
    puts "result array is #{arr.to_s}, comparisons: #{comparisons}, swaps: #{swaps}"
  end

  def SortingMethods.insertion_sort arr
    puts "Processing insertion sort..."
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
      end
      insertions += 1
      arr[j] = temp
      puts "#{arr.to_s} -> done with #{i} loop(s)"
    end
    puts "result array is #{arr.to_s}, comparisons: #{comparisons}, insertions: #{insertions}"
  end

  def SortingMethods.selection_sort arr
    puts "Processing selection sort..."
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
    puts "result array is #{arr.to_s}, comparisons: #{comparisons}, swaps: #{swaps}"
  end
end
