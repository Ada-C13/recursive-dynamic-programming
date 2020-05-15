# Improved Fibonacci

# Time Complexity - ?
# Space Complexity - ?  (should be O(n))
# Hint, you may want a recursive helper method


# Fib(0) = 0
# Fib(1) = 1

# Fib(n) = Fib(n-2) + Fib(n-1), for all n >= 2

# Restrictions:

#   - You cannot use a loop, use recursion.
#   - Your solution should be O(n) space complexity, due to the call stack.
def fibonacci(n)
	if n < 0
		raise ArgumentError
	end

	if n == 0 || n == 1
			return n
	end

	fib_0 = 0
	fib_1 = 1
	
	current = 2
	fib_current = 1
	while !(current == n)
			fib_current = fib_0 + fib_1

			current += 1
			fib_0 = fib_1
			fib_1 = fib_current

	end
	
	return fib_0 + fib_1

end
