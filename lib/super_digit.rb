# Superdigit

# Faezah and I worked together through these problems :)

# Time Complexity - O(n), where n is the number of digits in the number. Or O(logn), where n is the number
# Space Complexity - O(n), where n is the number of digits in the number. Or O(logn), where n is the number
def super_digit(number) # 987666
  until number < 10
    number = super_helper(number) 
  end

  return number
end

def super_helper(num)
  if num < 10
    return num
  else
    return (num % 10) + super_helper(num / 10)
  end
end
  

# Time Complexity - O(n), where n is the number of digits in n multipled by the var times
# Space Complexity - O(n), where n is the number of digits in n multipled by the var times
def refined_superdigit(num, times)
  new_num = (num.to_s * times).to_i
  return super_digit(new_num)
end
