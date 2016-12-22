def search_first_larger_k(array, k)
  left = 0
  right = array.size - 1
  res = -1

  while left <= right
    middle = ((left + right) / 2).floor
    if array[middle] > k
      # record the solution and keep searching the left part
      res = middle
      right = middle - 1
    else
      left = middle + 1
    end
  end

  res
end