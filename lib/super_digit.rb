# Superdigit

# Time Complexity - O(n) where n is the number of digits (Is there a way to be more specific?)
# Space Complexity - O(n) where n is the number of digits; using call stack + auxiliary array
def super_digit(n)
  return n if n < 10
  sum_of_nums = n.to_s.split("").sum do |num|
    num.to_i
  end
  super_digit(sum_of_nums)
end

# Alternative from Leetcode:
# def add_digits(num)
#   num < 10 ? num : add_digits(num.digits.sum)
# end
  

# Time Complexity - O((digits in n) * k)
# Space Complexity - O((digits in n) * k)
def refined_super_digit(n, k)
  num = ""
  k.times do
    num << n.to_s
  end

  super_digit(num.to_i)
end
    