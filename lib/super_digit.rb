# Superdigit

# Time Complexity - O(n) n being number of digits
# Space Complexity - O(n)
def super_digit(n)
  sum = 0

  if n < 10 # if n is less than  < 10
    return sum + n  # add sum + n
  else
    until n < 10
      n % 10
      sum += (n % 10)
      n /= 10 #divides n by 10
    end

    sum += n # sum 0 + n 0
  end

  return super_digit(n = sum)
end

# Time Complexity - O(n) n reps number of ints in super digit
# Space Complexity - O(n)
def refined_super_digit(n, k)
  num = ""
  k.times do # is many times
    num << n.to_s
  end

  return super_digit(num.to_i) # will take digit and run super_digit method
  # start refine method over again
end
