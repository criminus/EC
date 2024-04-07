'''
In this activity we use functions.
We have to create a function that will output the list content
and the max value of the list.

We know already how to get the max value of a list and the other requirement it's
pretty simple.
'''

##So let's go ahead and create a defined function that takes a parameter
##In our case it will be a list.
def printAndMax(param):
    print("The content of the list is {}".format(param))
    ##Define variable with first index of the list:
    max = param[0]
    ##For loop to increment the max value
    for i in range(len(param)):
        if param[i] > max:
            max = param[i]
    ##After we exit the loop, we output the max value of the list:
    print("The max value in the list is: {}".format(max))

##We initiate the list
myList = [10, 2, 3, 4, 7]

##And finally call the function with our list as parameter.
printAndMax(myList)