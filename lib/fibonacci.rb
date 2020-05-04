# Improved Fibonacci

# Time Complexity - O(n)
# Space Complexity - O(n) (should be O(n))
# Hint, you may want a recursive helper method

# Resources: fav. one https://by-cha.se/ruby-memoization.html
# Resources: https://medium.com/@santiago.chamon/best-way-to-write-the-fibonacci-sequence-in-ruby-for-beginners-c78fd9dfcc44
# Resources: for another way to answer https://www.geeksforgeeks.org/recursion-in-ruby/
def fibonacci(num)
 raise ArgumentError if num < 0
 return 0 if num == 0
 helper(0, 1, num-1)
end

def helper(i, j, num)
  return j if num == 0
  return helper(j, i+j, num-1)
end