'''
In this activity we must create a function that checks if a number is prime or not
Same way we did with VanillaJS
'''

def isPrime(param):
    ##We don't want to accept numbers below 2.
    if param <= 1:
        return False
    
    ##We now need to check if the number is divisible by any integer from 2 to halfway point
    for i in range(2, param // 2 + 1):
        if param % i == 0:
            return False

    ##if the number is not divisible by any integer from 2 to halfway point, its prime
    return True
    

print(isPrime(4))
    
        