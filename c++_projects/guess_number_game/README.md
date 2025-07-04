# Guess the Number

A simple C++ console game where the player tries to guess a randomly selected integer number within a certain number of attempts.

The game goes as follows:

- The user sets the maximum possible number to guess, as well as the number of attempts.
- A random integer number between 1 and the chosen maximum is generated.
- On each turn, the user inputs a guess. The game responds with feedback: too high, too low, or correct.
- Repeated guesses are flagged, and input is validated.
- After each game, the user is prompted to play again.

## Code Structure

- `IsInteger(input)` — Checks whether a given string represents a valid integer number  
- `IsNew(item, list)` — Verifies that a guess has not been repeated  
- `CustomSettings(max, attempts)` — Prompts the user to define the guessing range and number of attempts  
- `Game(max, attempts)` — Runs the main game loop, handles guessing, input validation, and feedback  
- `Replay()` — Asks the user whether they want to play again and returns a boolean result
