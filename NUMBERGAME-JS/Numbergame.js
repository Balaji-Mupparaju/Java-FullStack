const m = 1;
const n = 100;
var answer = Math.floor(Math.random() * 100) + 1;
var attempts = 0;
var result = true;

while (result) {
    var guess = prompt(`Please enter your number from ${m} - ${n}`);
    
    if (guess === null) {
        alert("Game exited!");
        break;
    }
    
    guess = Number(guess);

    if (isNaN(guess) || guess < m || guess > n) {
        alert(`Please enter a valid number between ${m} and ${n}`);
        continue;
    }
    
    if (guess > answer) {
        alert("You are ahead of the number!!");
    } else if (guess < answer) {
        alert("You are below of the number!!");
    } else {
        alert("You won!!");
        result = false;
    }
    
    attempts++;
}

alert(`You took ${attempts} attempts to guess the correct number.`);
