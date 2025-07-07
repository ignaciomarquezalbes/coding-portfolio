# Hangman Game

A simple console-based Hangman game written in Python, where the player tries to guess a randomly chosen word by suggesting letters within a limited number of lives.

## Gameplay Overview

- A random word is selected from an online source or a fallback list.
- The player guesses one letter at a time.
- Correct guesses reveal letters in the word; incorrect guesses reduce the number of lives.
- The current word state is shown after each guess, with guessed letters and underscores.
- The player wins by guessing all letters before running out of lives.
- After the game ends, the player is prompted to play again.

## Code Structure

- `obtain_word()` ? Retrieves a random word from an online source or selects from a fallback list if needed.
- `display_word(word, guessed)` ?€” Displays the current word state with guessed letters and underscores.
- `play_game()` ?€” Runs the main game loop, handling user input, validation, and game state.
- **Main loop** ?€” Repeats the game and handles replay prompts.

