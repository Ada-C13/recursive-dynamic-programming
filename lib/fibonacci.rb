# Improved Fibonacci

# Time Complexity - O(n), with n being the value of the integer.
# Space Complexity - O(n), because of the recursive stack.
# Hint, you may want a recursive helper method
def fibonacci(n)
	raise ArgumentError if n < 0
	return 0 if n == 0
	return 1 if n == 1 || n == 2

	return fib_helper(n, 2, 1, 1, 1)
end

def fib_helper(target, current, one, two, sum)
	if current < target
		return fib_helper(target, current + 1, one = two, two = sum, two + one)
	end

	return sum
end