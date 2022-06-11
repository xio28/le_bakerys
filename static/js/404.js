const container = document.querySelector('#game__container');
const player = document.querySelector('#player');
const obstacle = document.querySelector('#obstacle');
const score = document.querySelector('#score');
const gameOver = document.querySelector('#game-over');

// score
let interval = null;
let playerScore = 0;

let scoreCounter = () => {
    playerScore ++;
    score.innerHTML = `Score: <span>${playerScore}</span>`;
};

// Start Game
window.addEventListener("keydown", (start) => {
    if (start.code == "Space") {
        gameOver.style.display = "none";
        obstacle.classList.add('obstacle-active');

        let playerScore = 0;
        interval = setInterval(scoreCounter, 500);
    };
});

// Jump
window.addEventListener('keydown', (e) => {
    console.log(e);
    if (e.key == "ArrowUp") {
        if (player.classList != 'player-active') {
            player.classList.add('player-active');
            setTimeout( () => {
                player.classList.remove('player-active');
            }, 500)
        };
    };
});

// Game Over
let result = setInterval( () => {
    let playerPosition = parseInt(getComputedStyle(player).getPropertyValue('bottom'));
    let obstaclePosition = parseInt(getComputedStyle(obstacle).getPropertyValue('left'));

    if (playerPosition <= 20 && obstaclePosition >= 0 && obstaclePosition <= 30) {
        
        gameOver.style.display = 'block';
        obstacle.classList.remove('obstacle-active');
        clearInterval(interval);
        playerScore = 0;
    };

}, 10);