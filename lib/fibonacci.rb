# Improved Fibonacci

# Time Complexity - O(n)
# Space Complexity - O(n), because of call stack
# Hint, you may want a recursive helper method
def fibonacci(n)
    raise ArgumentError if n < 0
    return fib_helper(0, 1, 2, n)
end

def fib_helper(last, penultimate, current, n)
    # base case
    return n if n < 2
    sum_last_two = last + penultimate
    if current == n
        return sum_last_two
    end
    # recursive case
    last, penultimate = penultimate, sum_last_two
    return fib_helper(last, penultimate, current + 1, n)
end
