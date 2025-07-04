# Hangman game

A simple console-based Hangman game in Python where the player tries to guess a randomly chosen word by suggesting letters within a limited number of lives.

The game works as follows:

- A random word is selected from an online source or a fallback list.
- The player guesses one letter at a time.
- Correct guesses reveal letters in the word; incorrect guesses reduce the number of lives.
- The game shows the current word state with guessed letters and underscores.
- The player wins by guessing all letters before running out of lives.
- After the game ends, the player can choose to play again.

## Code Structure

- `obtain_word()` — Retrieves a random word from an online source, or selects from fallback words if necessary  
- `display_word(word, guessed)` — Displays the current word state with guessed letters revealed and others as underscores  
- `play_game()` — Runs the main game loop, handling input validation, guess checking, and game state  
- Main loop — Runs the game repeatedly and handles replay prompts  

