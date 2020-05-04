# Improved Fibonacci

# Time Complexity - O(n)
# Space Complexity - O(n)
# Hint, you may want a recursive helper method
def fibonacci(n)
    raise ArgumentError if n < 0 
    return fibonacci_helper([0, 1], n)
end

def fibonacci_helper(solutions, n)
    return 0 if n == 0 
    return 1 if n == 1

    sum_of_two_previous_fibs = solutions[0] + solutions[1]
    return sum_of_two_previous_fibs if n == 2

    solutions[0] = solutions [1]
    solutions[1] = sum_of_two_previous_fibs
    return fibonacci_helper(solutions, n - 1 )
end


# def fibonacci(n)
#     return fibonacci_helper([0, 1], 2, n)
# end

# def fibonacci_helper(solutions, current, n)
#     return n if n == 0 || n == 1

#     if current == n 
#         return solutions[n - 1] + solutions[n - 2]
#     end

#     solutions << solutions[current - 1] + solutions[current - 2]
#     return fibonacci_helper(solutions, current + 1, n)
# end

p fibonacci(6)


