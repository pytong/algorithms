def parition(array, pivot_index)
  pivot = array[pivot_index]

  # bottom group: array[0 -> smaller - 1]
  # middle group: array[smaller -> equal - 1]
  # unclassified group: array[equal -> larger]
  # top group: A[larger + 1 -> array.size - 1]

  smaller = 0
  equal = 0
  larger = array.size - 1

  # When there is any unclassified element
  while (equal <= larger)
    # array[equal] is the incoming unclassified element
    if array[equal] < pivot
      swap(array[smaller], array[equal])
      smaller += 1
      equal += 1
    elsif array[equal] == pivot
      equal += 1
    else # array[equal] > pivot
      swap(array[equal], array[larger])
      larger -= 1
    end
  end
end