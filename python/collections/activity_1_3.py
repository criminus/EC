'''
In this activity we must the min and max value of a list / array.
The procedure it's simple:
    We initiate the list
    We define a min and max value with the value of the first index in the array
    While we go through the array we update them if the variable is < or > than the first index
'''

##So let's initiate the list, min and max values
myList = [25, 14, 56, 15, 36, 56, 77, 18, 29, 49]
min = myList[0]
max = myList[0]

##Now we do the loop:
for i in range(len(myList)):
    ##If the current element we check is less than min value (25), we update min
    if myList[i] < min:
        min = myList[i]

    ##If the current element we check is greater than max value (25), we update max
    if myList[i] > max:
        max = myList[i]

##Finally, we print the original list, max and min.
print("Original List: {}".format(myList))
print("Maximum value for the above list = {}".format(max))
print("Minimum value for the above list = {}".format(min))