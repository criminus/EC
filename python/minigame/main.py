'''
Now that we've covered all base concepts of python
we should be able to pull a nice game
For this game we will need to import the random module
to be able to get a random value for the computer
'''
import random

##Let's print a message when we launch the game:
welcomeMessage = "Welcome to the Rock Paper Scissors Minigame!\nHere are the rules:Rock smashes Scissors.\nPaper covers Rock.\nScissors cut Paper.\nIf your pick matches the computer's, it's a tie.\nAfter you quit playing, you will be able to see the final score."
print(welcomeMessage)

##For the game itself we will be working with only one function
##One for the play. For the computer's choice we will have a variable with random value from 0-2
##We will have a parameter in our function which is the value of the input: r, p, s
##We want to declare the scores outside the function so they will be updated always
myScore = 0
computerScore = 0
def playGame(param):
    ##We get the scores again using global since they are outside the function
    global myScore, computerScore

    ##Random computer pick
    compPick = random.randint(0, 2)

    ##For the letter -> Num conversion
    if param == 'r':
        param = 0
    elif param == 'p':
        param = 1
    elif param == 's':
        param = 2
    else:
        print("Invalid choice!")
        return
    
    '''
    Now that we have a working prototype, we should create the game logic:
        Rock > Scissors
        Paper > Rock
        Scissors > Paper
        myPick = compPick => It's a tie!
    '''
    ##A list of words so we can access by index.
    picksList = ["Rock", "Paper", "Scissors"]

    ##Print the input's value with our pics
    print("You chose {}, the computer chose {}.".format(picksList[param], picksList[compPick]))
    
    ##Check if pick by us and computer and return the right message.
    ##We normally only need 4 checks here but since we want to print
    ##when we lose, we have to add 3 more checks for the computer.
    if param == compPick:
        print("You both selected {}. It's a tie!".format(picksList[param]))
    elif param == 0 and compPick == 2:
        print("Rock smashes Scissors. You win!")
        myScore += 1
    elif param == 1 and compPick == 0:
        print("Paper covers Rock. You win!")
        myScore += 1
    elif param == 2 and compPick == 1:
        print("Scissors cut Paper. You win!")
        myScore += 1
    elif compPick == 0 and param == 2:
        print("Rock smashes Scissors. You lost!")
        computerScore += 1
    elif compPick == 1 and param == 0:
        print("Paper covers Rock. You lost!")
        computerScore += 1
    elif compPick == 2 and param == 1:
        print("Scissors cut Paper. You lost!")
        computerScore += 1

    ##Ininiate the input if we want to play again or not
    ##Using the While True to display the input again if the answer is invalid
    while True:
        playAgain = input("Play again? (y/n):")
        ##Let's check the value of the input now:
        if playAgain == 'y':
            ##We have to reinitiate the input so we can get the new value for the function
            enterChoice = input("Enter a choice (Rock(r), Paper(p), Scissors(s)):")
            playGame(enterChoice)
        elif playAgain == 'n':
            print("Game ended.\nFinal score:\nPlayer:{}\nComputer:{}".format(myScore, computerScore))
            break  ## We break the loop if N selected.
        else:
            print("You must enter y (yes) or n (no)!")

enterChoice = input("Enter a choice (Rock(r), Paper(p), Scissors(s)):")
playGame(enterChoice)


