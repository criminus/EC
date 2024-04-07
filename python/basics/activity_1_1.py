##Initiate an empty array to push the values to it
testData = []

a = -5 + 8 * 6
b = (55+9) % 9
c = 20 + (-3*5) / 8
d = 5 + 15 / 3 * 2 - 8 % 3

##Push values using append
testData.append(a)
testData.append(b)
testData.append(c)
testData.append(d)

##Iterate through the array and print the result of each variable.
for i, result in enumerate(testData):
    print("{}. Results: {}".format(i+1, result))