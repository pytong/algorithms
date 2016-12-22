# if a letter appears k times in L, it must appear at least k times in M

def anonymous_letter(letters, text)
  # insert all chars in letters into a hash table
  hash = {}

  # check chars in text that could cover chars in a hash table
  # for each char in text
  #  if the char is found in hash
  #    if count == 0 after -1
  #      erase key
  #        if hash is empty
  #          return true

  # no entry in hash means letters can be covered by text
  hash.keys.size == 0
end