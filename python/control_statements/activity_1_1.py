'''
In this Activity we must use inputs to check if each number we input is different
from each other. We already did this in VanillaJS should be straightforward.
'''

##We initiate the inputs with expected type INT
firstNum = int(input("Input first number:"))
secondNum = int(input("Input second number:"))
thirdNum = int(input("Input third number:"))

##Let's now check if all numbers we get are different:
##We first check if the numbers are the same
if firstNum == secondNum and secondNum == thirdNum:
    print("All numbers are equal.")
##Now if the values are different from one another
elif firstNum != secondNum and secondNum != thirdNum:
    print("All numbers are different.")
##If none of the above, we return a default
else:
    print("Neither all are equal or different.")

