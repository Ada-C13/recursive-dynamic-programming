# Superdigit

# recursive super_digit:
  # base case: if one digit, return that digit
  # break the number down to its digits' sum
  # call super_digit on sum
# Time: O(log n)
# Space: O(log n)

def super_digit(n)
  return n if n < 10

  sum = 0
  while (n != 0)
    remainder = n % 10
    sum += remainder
    n /= 10
  end

  return super_digit(sum)
end

# iterative super_digit:
  # Time Complexity - O(log n), where n is number of digits (losing powers of ten each time you add digits together)
  # Space Complexity - O(1) because we're just using variables to track sum, remainder and super_digit_helper call won't take any extra stack frames

#   def super_digit_helper(n)

#   sum = 0

#   while (n != 0)
#     remainder = n % 10
#     sum += remainder
#     n /= 10
#   end

#   return sum
# end

# def super_digit(n)
#   while n > 10
#     # update n to be result of calling super_digit_helper with n
#     n = super_digit_helper(n)
#   end

#   return n
# end
  

# TODO:
# Time Complexity - ?
# Space Complexity - ?
# if numbers add up to three in a digit, then divisible by three.
# def refined_super_digit(n, k)

# end