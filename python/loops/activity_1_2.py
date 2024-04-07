'''
In this activity, we must create the multiplication table (from 1 to 10) of a number
in an input.
We already did this with VanillaJS so it's again, simple and straightforward.
'''

##Let's initiate the input with expected type int
inputNum = int(input("Input a number:"))

##Let's now create a for loop to multiply each number
##We want to use range from 1 to 11
##In python, range will generate up to but not inclusive so 1-11 will be 1-10.
for number in range(1, 11):
    print("{} x {} = {}".format(inputNum, number, inputNum * number))