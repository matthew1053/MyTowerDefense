// Step event of a game object
if (global.is_paused) {
    exit; // Prevents any further code from running in this step
}

// Regular movement or game logic
x += speed;