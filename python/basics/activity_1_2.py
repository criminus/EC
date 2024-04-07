##we must create 2 inputs, get their value, divide it and output
##We start with initiating the inputs in variables with type int
##so we can take their values after
##We must declare the type expected by input with int(input())
firstInput = int(input("Input the first number:"))
secondInput = int(input("Input the second number:"))
##Now that we have the inputs, values, we do the division:
##Let's use int() to get the integer not the float value
divResult = int(firstInput / secondInput)
print("The division of the first number {} and the second number {} is: {}".format(firstInput, secondInput, divResult))