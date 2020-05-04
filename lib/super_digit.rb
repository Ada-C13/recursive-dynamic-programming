# Superdigit
# Time Complexity - O(log10n)?
# Space Complexity - O(log10n)?
def super_digit(n)
  raise ArgumentErrof if n < 0
  return n if n < 10      # base case

  sum = 0
  while n / 10 > 0
    sum += n % 10
    n /= 10
  end
  sum += n
  
  return super_digit(sum)
end
  
# Refined Superdigit
# Time Complexity - O(log10n)
# Space Complexity - O(log10n)
def refined_super_digit(n,k)
  return super_digit(n*k)
end



# Refined Superdigit
# def refined_super_digit(n, k)
#   raise ArgumentErrof if n < 0
#   return n if n < 10      # base case
#   sum = 0
#   while n / 10 > 0
#     sum += n % 10
#     n /= 10
#   end
#   sum += n
#   if k > 0
#     sum *= k
#     k = 0
#   end
#   return refined_super_digit(sum, k)
# end


# Superdigit: Using 2 recursions 
# def super_digit(n)
#   raise ArgumentErrof if n < 0
#   # base case: when n < 10
#   return n if n < 10
#   # recursive case
#   sum = sum_digits(n)
#   return super_digit(sum)
# end
# def sum_digits(n)
#   if n < 10 
#     return n
#   else
#     return (n%10) + sum_digits(n/10)
#   end
# end