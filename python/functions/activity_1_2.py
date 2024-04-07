'''
Same as in VanillaJS, we must calculate the factorial of a number.
The function should accept a number as argument.
'''

##Define the function
def getFactorial(n):
    ##We can't accept values less than 0
    if n < 0:
        return 'Factorial is not defined for negative numbers.'
    
    ##If the given number is 0 or 1, the factorial is 1
    if n == 0 or n == 1:
        return 1
    
    ##Calculate factorial recursively
    ##The factorial of a number given 'n' is equal to 'n' multiplied by
    ##the factorial of the number one less than 'n'.
    return n* getFactorial(n - 1)

##Finally, let's print the output.
print(getFactorial(6))