def count_numbers_factors(n)
  square_root = Math.sqrt(n).floor
  count = 0

  for i in 1..square_root
    if n % i == 0
      i == n / i ? count += 1 : count += 2
    end
  end

  count
end

count_numbers_factors(25)