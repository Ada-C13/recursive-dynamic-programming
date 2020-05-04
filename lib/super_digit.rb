# Superdigit

# Time Complexity - O(n)
# Space Complexity - O(n)

# APPROACH 1
def super_digit(n)
  return n if n < 10 
  return super_digit(n.to_s.chars.map(&:to_i).sum)
end

# # APPROACH 2
# def super_digit_helper(n)
#   i, sum = 0, 0
#   n_string = n.to_s
#   while i < n_string.length
#     sum += n_string[i].to_i
#     i += 1
#   end
#   return sum
# end

# def super_digit(n)
#   return n if n < 10 
#   return super_digit(super_digit_helper(n))
# end


# Time Complexity - O(n)
# Space Complexity - O(1)
def refined_super_digit(n, k)
  return super_digit((n.to_s * k).to_i)
end
    