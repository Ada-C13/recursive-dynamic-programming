# Superdigit
# super_digit(9875) --> superdigit(9 + 8 + 7 + 5) = superdigit(29)
# super_digit(29)   --> superdigit(2 + 9) = superdigit(11)
# super_digit(11)   --> superdigit(1 + 1) = superdigit(2)
# super_digit(2)    --> 2

# Time Complexity  - O(logn)
# Space Complexity - O(n)
def super_digit(n)
  sum = 0
  while n >= 10 do
    sum += n % 10
    n /= 10
  end
  sum += n
  return sum < 10 ? sum : super_digit(sum)
end
  
# Time Complexity  - O(logn)
# Space Complexity - O(n)
def refined_super_digit(n, k)
    s = ""
    k.times do
      s += n.to_s
    end
    return super_digit(s.to_i)
end