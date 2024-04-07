'''
In general, statements are executed sequentially: The first statement in a function is executed first, followed by the second, and so on. There may be a situation when you need to execute a block of code several number of times. 
Programming languages provide various control structures that allow for more complicated execution paths. 
A loop statement allows us to execute a statement or group of statements multiple times.
'''

##The while loop
##Print i as log as i is less than 6
##Unlike VanillaJS, Python doesn't use ++ to increment. We should use += instead.
i = 1
while i < 6:
    print(i)
    i+=1

#Increment again and break at i = 3
i = 1
while i < 6:
    print(i)
    if i == 3:
        break
    i += 1

##Increment and skip number 3 (same as in VanillaJS, we use continue to skip)
i = 0
while i < 6:
    i += 1
    if i == 3:
        continue
    print(i)