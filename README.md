# Sorting Algorithm

Since I am currently taking CSE 21 - "Algorithm" in UCSD, I decide to rearrange and put the scripts
of sorting algorithm I made before for the Data Structure course together.

Right now there are bubble sort, insertion sort and selection sort.

# Run

To run the application, just type:
```
ruby UserInput.rb
```
in the correct folder, and then you can follow the instructions to sort the array.

# Psuedocode

In these psuedocodes, the index of array always starts from 1 to make things easier, and n is the amount of the element in array.

## Selection Sort
The psuedocode of selection sort is:
```
for i = 1 to n - 1
  min = arr[k]
  index = k
  for j = k + 1 to n
    if arr[j] < min then
      min = arr[j]
      index = j
    arr[index] swaps position with arr[k]
```
The comparisons made in this sorting method are ```n(n - 1) / 2``` times. So the complexity is ```O(n^2)```.

## Bubble Sort
The psuedocode of bubble sort is:
```
for i = 1 to n - 1
  for j = 1 to n - i
    if arr[j] > arr[j + 1] then
      arr[j] interchanges with arr[j + 1]
```
The comparisons made in this sorting method are also ```n(n - 1) / 2``` times. So the complexity is ```O(n^2)```.

## Insertion Sort
The psuedocode of insertion sort is:
```
for i = 2 to n
  temp = arr[i]
  j = i
  while (arr[j - 1] > temp) and (j > 1)
    arr[j] = arr[j - 1] // shifts the element to the right
    j -= 1 // compares the left element with temp at the next loop
  arr[j] = temp
```
In the sorting method, the best case of comparisons are ```n``` times, and the worst case of comparisons are still ```n(n - 1) / 2``` times. Although the complexity is still ```O(n^2)```, but since the data is usually close to almost sorted, this method is faster than the other two methods.
