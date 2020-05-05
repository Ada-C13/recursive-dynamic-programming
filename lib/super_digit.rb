# Superdigit

# Time Complexity - O(n) where n is a function of the input length
# Space Complexity - O(nlog(n)), adding n frames and creating new array each frame because of .digits (each array is of size n where n is a progressively smaller number)
def super_digit(n)
  return n if n < 10
  return super_digit(n.digits.sum)
  # return super_digit(sum_all_digits(n))
end
  

# Time Complexity - O(n)
# Space Complexity - O(nlog(n))
# since we are only using k to modify initial value of n, time/space complexity is same as super_digit
def refined_super_digit(n, k)
    super_digit(n * k)
end
    

# Alternative helper to solve super_digit without using built-in ruby methods, for recursion practice.
# Not sure how chaining .digits with .sum works under the hood so I can't determine if using this helper method would be more efficient.
# A sum_all_digits helper using a loop instead of recursion would be even more efficient but not as fun!!!
def sum_all_digits(n)
  return n < 10 ? n : n%10 + sum_all_digits(n/10)
end