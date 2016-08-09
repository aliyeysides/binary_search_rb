# set first value to low and set last value to high

# count the number of values with a for loop, divide by 2 and get
# the value at that index(the middle value)

# if the value at halfway is higher than the number, use recursion
# to drop everything from the reference point to the right and
# do it again

# otherwise do the the same with the left, until you only have a
# an array with a single value.

def binary_search(num, array, min = 0, max = array.length)
  return -1 if (array[min..max].length == 1 && array[0] != num)
  return middle_index if array[middle_index] == num
  
  middle_index = ((min + max) / 2)
  
  if array[middle_index] > num
    binary_search(num, array, min, middle_index)
  else
    binary_search(num, array, middle_index, max)
  end
end
