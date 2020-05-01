# Superdigit

# Time Complexity - O(n), with n being the number of digits in the initial integer.
# Space Complexity - O(n), because of the recursive stack; size of the stack depends on the number of digits.
def super_digit(n)
  sum = 0

  if n < 10
    return sum + n
  else
    until n < 10
      sum += (n % 10)
      n /= 10
    end

    sum += n
  end

  return super_digit(n = sum)
end

# Time Complexity - O(n * k), with n being the number of digits in the n initially, and k being the number of times more
# Space Complexity - O(n), because of the recursive stack.
def refined_super_digit(n, k)
  sum = 0

  k.times do
    sum += super_digit(n)
  end

  return super_digit(n = sum)
end
    