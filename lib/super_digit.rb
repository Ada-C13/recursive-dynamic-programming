# Superdigit

# me and Jessica worked through these problems together :)

# Time Complexity - each time super helper runs it is O(num.length)
# => O(n) but really it is O(log n of the num in the base of 10)
# and it might run multiple times until number becomes less than 10 but that's a
# constant and we drop it.
# Space Complexity - O(n) based on the above logic
def super_digit(number)
  number = super_helper(number) until number < 10
  number
end

def super_helper(num)
  if num < 10
    num
  else
    (num % 10) + super_helper(num / 10)
  end
end

# Time Complexity - similar to the above method except that one time
# we create a new string and new number but since it is constatnt no matter what
# parameters are, it does not increase the time or space complexity.
# Space Complexity - ^
def refined_super_digit(num, times)
  new_num = (num.to_s * times).to_i
  super_digit(new_num)
end
