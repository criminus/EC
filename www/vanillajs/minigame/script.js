/*
Let's first create our startGame() Function
This function should check our input value and should hide the welcome
message and display the game itself.
Simple error handling using arrays to hold our errors as we go.
*/

function startGame() {
    //Let's take the input value first.
    let inputValue = document.getElementById('gameRounds').value;

    //We define an empty array to hold our error messages and use array.push
    //to add errors to our array of errors while we do the checks.
    let errorBlock = [];

    //Let's check the values inside the gameRounds now:
    if (inputValue === null || inputValue === '') {
        errorBlock.push('Please enter a number of rounds to be played!');
    } else if (inputValue > 99) {
        errorBlock.push('Please enter less than 99 rounds to play!');
    } else if (inputValue < 1) {
        errorBlock.push('Please enter at least 1 round to play!');
    } else {
        //Now that everything works as expected, we can hide this and proceed to the game:
        let gameContainer = document.getElementById('game-container');
        let welcomeContainer = document.getElementById('welcome-container');
        gameContainer.style.display = 'block';
        welcomeContainer.style.display = 'none';
    }

    //We display the errors on our page inside the error block.
    let errorBlockContainer = ""; //We should initiate an empty container
    let errorBlockElement = document.getElementById('errorBlock');
    for (let i = 0; i < errorBlock.length; i++) {
        //We output each error we've collected until this point.
        errorBlockContainer += `<p>${errorBlock[i]}</p>`;
        //Now we want to assign the container with errors to our html element
        errorBlockElement.innerHTML = errorBlockContainer;
        //And set its visibility so we can actually see the error
        errorBlockElement.style.display = 'block';
    }

    //Display the max rounds
    document.getElementById('maxRounds').innerHTML = inputValue;
}

//Let's generate the buttons now:
const picks = [
    {'name': 'Rock', 'symbol': '👊'},
    {'name': 'Paper', 'symbol': '✋'},
    {'name': 'Scissors', 'symbol': '✌'},
];
//We get the buttons container and populate it
let buttonsContainer = document.getElementById('buttons');
for (let i = 0; i < picks.length; i++) {
    buttonsContainer.innerHTML += `<button class='btn' onclick='playRound(${i});' id='${i}'><span class='btn-text'>${picks[i].name} ${picks[i].symbol}</span></button>`;
}

//Let's now do the playRound() function
//We want to make a function to get a random number from 0 to picks.length
//So we can get the number and also it's name, symbol if needed.
//We also want to initiate 4 variables that will hold the score.
//We want one that will hold our max rounds choosen at the start.
let myScore = 0;
let computerScore = 0;
let tieScore = 0;
let totalRoundsPlayed = 0;

//We add a cooldown for the function until the cards are ready
let isOnCooldown = false;
function playRound(pick) {

    //Prevent the function from being called
    if (isOnCooldown) {
        return;
    }

    //Random pick a number from 0 to picks.length
    let computerPick = Math.floor(Math.random() * picks.length);
    let computerSymbol = picks[computerPick].symbol;

    //Now let's do the basic checks with my picks vs computer picks below.
    if (pick === computerPick) {
        // console.log('Its a tie!');
        //Increment and update tie score element
        tieScore++;
        document.getElementById("tiesPoints").innerHTML = tieScore;
    } else if (
        (pick === 0 && computerPick === 2) ||
        (pick === 1 && computerPick === 0) ||
        (pick === 2 && computerPick === 1)
    ) {
        // console.log('You win!');
        //Increment our score, totalrounds played and updating elements
        myScore++;
        totalRoundsPlayed++;
        document.getElementById("myPoints").innerHTML = myScore;
        //Let's update the currRound value
        document.getElementById('currRound').innerHTML = totalRoundsPlayed;
    } else {
        // console.log('Computer wins!');
        //Increment computer's score, totalrounds played and updating elements
        computerScore++;
        totalRoundsPlayed++;
        document.getElementById("computerPoints").innerHTML = computerScore;
        //Let's update the currRound value
        document.getElementById('currRound').innerHTML = totalRoundsPlayed;
    }

    //We take the input's value again so we can do a check:
    let inputValue = document.getElementById('gameRounds').value;
    document.getElementById('maxRounds').innerHTML = inputValue;
    
    //We will hide the buttons once the max rounds is reached.
    if (totalRoundsPlayed >= inputValue) {
        buttonsContainer.style.display = 'none';
        //Max rounds reached. Who is the winner?
        if (myScore > computerScore) {
            document.getElementById('winner').style.display = 'block';
            document.getElementById('winner').innerHTML = 'You won!';
            document.getElementById('winner').classList.add('winner');
        } else if (myScore < computerScore) {
            document.getElementById('winner').style.display = 'block';
            document.getElementById('winner').innerHTML = 'You lost!';
            document.getElementById('winner').classList.add('loser');
        } else {
            document.getElementById('winner').style.display = 'block';
            document.getElementById('winner').innerHTML = 'No winner!';
            document.getElementById('winner').classList.add('neutral');
        } 

        //Now that the game is finished, we want to play again maybe?
        //Here we just do a simple refresh button.
        let restartBtn = document.getElementById('restart');
        restartBtn.style.display = 'block';
    }

    //We trigger the flip animation with each pick.
    triggerFlipAnimations();

    //Let's update the cards contents with our pick and computers pick.
    document.getElementById('myPick').textContent = picks[pick].name;
    document.getElementById('computerPick').textContent = picks[computerPick].name;
    document.getElementById('pick').textContent = picks[pick].symbol;
    document.getElementById('pcPick').textContent = computerSymbol;


    //Update the cooldown
    isOnCooldown = true;
    setTimeout(() => {
        //Reset the cooldown after timeout.
        isOnCooldown = false;
        resetFlipAnimations();
    }, 1500);

    // console.log(`My pick: ${picks[pick].symbol} / Computer pick: ${computerPick} ${computerSymbol}`);
}

//We want to use querySelectorAll to flip both cards in the same time.
function resetFlipAnimations() {
    let cardSelectors = document.querySelectorAll('.flip-card-inner');
    cardSelectors.forEach(cardSelector => {
        cardSelector.style.transform = 'none';
    });
}

function triggerFlipAnimations() {
    let cardSelectors = document.querySelectorAll('.flip-card-inner');
    cardSelectors.forEach(cardSelector => {
        cardSelector.style.transform = 'rotateY(180deg)';
    });
}

