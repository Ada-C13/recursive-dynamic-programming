# Improved Fibonacci

# Time Complexity - O(n)
# Space Complexity - 0(n)
# 0(n * 3) Since I have 3 variables, but if we get rid of the constant. 
# Will be O(n)
# Hint, you may want a recursive helper method
def fibonacci(n)
 
end

class Fibonacci
  def self.fibonacci(n)
    @number1 = 0
    @number2 = 1
    @number3 = 0
    return fib_helper(n)
  end

  private

  def self.fib_helper(n)
    if n == 0 || n == 1
      return n
    elsif n < 0
      raise ArgumentError
    end

    if n > 2
      fib_helper(n - 1)
    end

    @number3 = @number1 + @number2
    @number1 = @number2
    @number2 = @number3

    return @number3
  end
end
