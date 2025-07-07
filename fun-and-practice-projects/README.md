# Rock-Paper-Scissors (Best of 3)

A simple two-player console game written in Python, where players compete in a best-of-3 rock-paper-scissors match.

## Gameplay Overview

- Each player secretly inputs their choice of Rock (R), Paper (P), or Scissors (S).
- The game validates inputs and compares the choices.
- The winner of each round is announced with a short reason (e.g., ?paper covers rock?).
- The first player to win 2 rounds wins the game.
- After the game ends, players are prompted to play again.

## Code Structure

- `get_valid_choice(player)` ? Prompts the specified player to enter a valid choice (R, P, or S), using hidden input for secrecy.
- `determine_winner(p1, p2)` ? Compares both players? choices and returns the winner and a reason.
- `play_game()` ? Manages rounds, scorekeeping, input/output, and game-over conditions.
- **Main loop** ? Runs the game repeatedly and handles replay prompts.

