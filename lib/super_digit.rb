# Superdigit

# Time Complexity - O(n)
# Space Complexity - O(n)
def super_digit(n)
   if n < 10
    return n
   end
   n_digits = n.digits
   return super_digit(n_digits.sum)
end


  

# Time Complexity - O(k*n)
# Space Complexity - O(k*n)
def refined_super_digit(n, k)
  if k <= 0
    raise ArgumentError.new("Forbidden: k <= 0")
  end
  if k == 1
    return n
  end
  n = concat_dig(n, k).to_i
  return super_digit(n)
end

def concat_dig(n, k)
  num_string = n.to_s
  if k == 1
    return num_string
  end
  return num_string + concat_dig(n, k - 1)
end


    