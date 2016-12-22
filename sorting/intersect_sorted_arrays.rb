# Given sorted arrays A and B of lengths n and m respectively,
# return an array C containing elements common to A and B.
# The array C should be free of duplicates.
# n ~ m, n < m

# complexity O(n log m)
def intersect_arrays(array1, array2)
  intersect = []

    array1.each_with_index do |value, i|
    if (i == 0 || array1[i] != array1[i - 1]) &&
        # binary_search in array2 finds the element
      # add to the intersect array

  intersect
end


# Since both arrays are sorted, we should use this property
# complexity O(n + m)
def intersect_arrays(array1, array2)
  intersect = []

  i = 0
  j = 0

  while i < array1.size && j < array2.size
    if array[i] == array2[j] && (i == 0 || array[i] != array[i-1])
      # add to intersect array
      i += 1
      j += 1
    elsif array[i] < array[j]
      i++
    else # array[i] > array[i]
      j++
    end
  end

  intersect
end

