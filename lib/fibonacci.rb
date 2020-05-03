# Improved Fibonacci

# Time Complexity - O(1)
# Space Complexity - O(n)

def fibonacci(n)
    if n<0
        raise ArgumentError 
    else 
        return fibonacci_helper(n, a=0 ,b=1)
    end    
end
    
def fibonacci_helper(n, a=0 , b=1 ) 
    if n==0
        return a
    elsif n==1
        return b
    else 
        return fibonacci_helper(n - 1, b, a + b)
    end
end
