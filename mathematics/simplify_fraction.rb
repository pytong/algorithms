# fast version
def simplify_fraction(numerator, denominator, result)
  greatest_common_divsor = gcd(numerator, denominator)

  result[0] = numerator / greatest_common_divsor
  result[1] = denominator / greatest_common_divsor
end

def gcd(a, b)
  while b > 0
    temp = b
    b = a % b
    a = temp
  end

  a
end



# slow version
def simplify_fraction(numerator, denominator, result)
    result[0] = numerator
    result[1] = denominator

    gcd_upper_boound = [numerator, denominator].min

    i = gcd_upper_boound
    while i >= 2
      if numerator % i == 0 && denominator % i == 0
        result[0] = numerator / i
        result[1] = denominator / i
        break
      end
      i -= 1
    end
end


result = Array.new(2)
simplify_fraction(77, 22, result)