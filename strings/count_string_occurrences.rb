STDIN.read.split("\n").split("")
   puts a
end



def KMP(text, pattern)
  i = 0
  j = 0
  count = 0

  pattern_length = pattern.length
  text_length = text.length

  prefix = prefix_table(pattern)

  while i < text_length
    while j >= 0 && text[i] != pattern[j]
      j = prefix[j]
    end

    i += 1
    j += 1

    # a match is found
    if j == pattern_length
      puts "found substring at index: #{i - pattern_length}"
      count += 1
      j = prefix[j]
    end
  end

  count
end

def prefix_table(pattern)
  i = 0
  j = -1
  m = pattern.length

  prefix = Array.new(m + 1)

    prefix[i] = j;
    while i < m
      while j >= 0 && pattern[i] != pattern[j]
        j = prefix[j]
      end

      i += 1
      j += 1
      prefix[i] = j
    end

  prefix
end



prefix_table("alabala")

KMP("babalabalabalatheend", "alabala")
