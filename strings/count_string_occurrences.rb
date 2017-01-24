def count_string_occurrences

end

def prefix_table(pattern)
  result = [-1, 0]
  pattern_length = pattern.length
  i = 2
  s = 0

  while i <= pattern_length
    # we have a continued substring in pattern from the start of pattern
    if pattern[i - 1] == pattern[s]
      result[i] = s + 1
      i += 1
      s += 1
    # if the substring stops, fall back to the start
    elsif s > 0
      s = result[s]
    # we aren't in a substring, so use the default value
    else
      result[i] = 0
      i += 1
    end
  end

  result
end

prefix_table("ATAG")
