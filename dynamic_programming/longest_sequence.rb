def longest_increasing_subsequence(sequence)
  longest_lengths = []
  longest_sequence = []
  previous_max_index = [-1]
  max = 1

  longest_lengths[0] = 1

  for i in 1...sequence.count # always include number at i

    previous_max_index[i] = -1
    longest_lengths[i] = 1

    for j in 0...i
      if sequence[i] > sequence[j] && longest_lengths[i] < (longest_lengths[j] + 1)
        longest_lengths[i] = longest_lengths[j] + 1
        max = longest_lengths[i] if longest_lengths[i] > max
        previous_max_index[i] = j
      end
    end
  end

  i = sequence.count - 1
  while i >= 0 && longest_lengths[i] != max
    i -= 1
  end

  while i >= 0
    longest_sequence << sequence[i]
    i = previous_max_index[i]
  end

  longest_sequence.reverse
end


longest_increasing_subsequence [16, 3, 5, 19, 10, 14, 12, 0, 15]
