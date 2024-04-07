## Generating Fibonacci series up to 50 using loops

##We initiate the finobacci_series list with the first two numbers (0-50 => 0, 1)
##We will start adding this two numbers
series = [0, 1]

##We enter a while loop that continues until the sum of last and second last are less than 50
##We access the elements in lists/arrays with [i] and then - to start from the end to beginning
while series[-1] + series[-2] < 50:
    ##Once we reach the limit of 50, we've generated all the numbers and pushed them to the list
    series.append(series[-1] + series[-2])

##Finally, we print the result.
print(series)

'''
I'd like to explain a little more the "science" behind this:
Fibonacci adds pairs of numbers from a list given.
We initiate list with only two values: 0 and 1.
We create a while loop that will check if the sum of last element and the one before
is less than 50
with each loop, we add the numbers together and push the sum to the array/list
using the append function.
'''

