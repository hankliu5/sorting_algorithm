class QuickSort
  @@comparisons = 0
  @@movements = 0

  def sort(list)
    qsort(list, 0, list.length-1)
  end

  def qsort(list, low, high)
    if (low < high)
      pivot = partition(list, low, high)
      qsort(list, low, pivot)
      qsort(list, pivot + 1, high)
    end
  end

  def partition(list, low, high)
    @@movements += 1
    temp = list[low]
    i = low - 1
    j = high + 1
    while(true)
      loop do
        j -= 1
        @@comparisons += 1
        if list[j] > temp
          break
        end
      end

      loop do
        i += 1
        @@comparisons += 1
        if (list[i] < temp)
          break
        end
      end

      if (i < j)
        @@movement += 3
        swapTemp = list[i]
        list[i] = list[j]
        list[j] = swapTemp
      else
        return j
      end
    end
  end
end

list = [3, 2, 1]
quicksort = QuickSort.new
quicksort.sort(list)
puts list.to_s
puts quicksort.comparisons
puts quicksort.movements
