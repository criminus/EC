'''
In this activity we must get the sum of all elements in a list.
It's pretty easy. After we initiate the list, we must create an empty variable
that will have the value 0. With each loop we add the numbers to the sum.
'''

##Let's initiate the list of values:
myList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
##An empty variable to add the numbers in
sum = 0

##We go through each number until we reach the max length of the array
for number in range(len(myList)):
    ##We add each number to the sum variable
    sum += myList[number]

##Then we output the sum
print(sum)