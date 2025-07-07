# Guess the Number Game

A simple console game written in C++, where the player tries to guess a randomly selected number within a limited number of attempts.

## Gameplay Overview

- The user sets the maximum possible number and the number of attempts.
- A random integer between 1 and the chosen maximum is generated.
- On each turn, the user enters a guess. The game provides feedback: too high, too low, or correct.
- Repeated guesses are flagged, and input is validated.
- After each game, the user is prompted to play again.

## Code Structure

- `IsInteger(input)` — Checks whether a given string is a valid integer.
- `IsNew(item, list)` — Verifies that a guess has not been repeated.
- `CustomSettings(max, attempts)` — Prompts the user to define the guessing range and number of attempts.
- `Game(max, attempts)` — Runs the main game loop, handling guessing, validation, and feedback.
- `Replay()` — Asks the user whether they want to play again and returns a boolean value.

