'''
In this activity we must check if the input numbers are in increasing order.
We did this with VanillaJS already so it should be pretty simple.
'''

##Let's initiate the first three inputs again with expected type int:
firstNum = int(input("Input first number:"))
secondNum = int(input("Input second number:"))
thirdNum = int(input("Input third number:"))

##Now we do the checks and we should check if firstNum < secondNum and secondNum < thirdNum
if firstNum < secondNum and secondNum < thirdNum:
    print("Increasing order.")
##Not included in the activity but we reverse it to get decreasing order too
elif firstNum > secondNum and secondNum > thirdNum:
    print("Decreasing order.")
else:
    ##And a random order if none of the above
    print("Random order.")