# Superdigit

# Time Complexity O(n) because I am using a loop ?
# Space Complexity 0(n) becuase I am using recursion?
def super_digit(n)
  string_n = n.to_s
  return n if string_n.size == 1

  i = 1
  sum = string_n[0].to_i
  while i < string_n.size
    sum += string_n[i].to_i
    i += 1
  end
  return super_digit(sum)
end
  

# Time Complexity - O(k+n) where n is the number of digits in n?
# Space Complexity - O(n) because I am using recursion ?
def refined_helper(n, k)
  string_n = n.to_s
  repeat_n = ""
  k.times do
    repeat_n.concat(string_n)
  end
  return repeat_n
end

def refined_super_digit(n, k)
  string_n = refined_helper(n, k)
  return n if string_n.size == 1

  i = 1
  sum = string_n[0].to_i
  while i < string_n.size
    sum += string_n[i].to_i
    i += 1
  end
  return super_digit(sum)
end
    