'''
In this activity we must calculate the average value of a list / array
'''

##Let's initiate the list first:
myList = [20, 30, 25, 35, -16, 60, -100]
##Sum empty variable to be used at division
sum = 0

##We use a for loop again to get the sum of all and then divide it by it's len
##We don't use a range for this as we want to get the values not indices.
for number in myList:
    sum += number

##Let's divide to find the average now
average = sum / len(myList)

##Now we print the value:
print("The average number from the list: {} is :{}".format(myList, average))