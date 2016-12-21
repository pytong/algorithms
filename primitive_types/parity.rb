def parity(n)
  n = n.to_s.to_i(2)

  result = 0
  while n > 0
    result ^= (n & 1)
    n = (n >> 1)
  end

  result
end